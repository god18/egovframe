package god.com.table.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.ibatis.sqlmap.client.SqlMapExecutor;

import egovframework.com.cmm.service.FileVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.cmmn.exception.FdlException;
import egovframework.rte.fdl.excel.EgovExcelService;
import egovframework.rte.fdl.excel.util.EgovExcelUtil;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import egovframework.rte.psl.dataaccess.util.EgovMap;
import egovframework.rte.psl.orm.ibatis.SqlMapClientCallback;
import god.com.table.service.GodTableService;
import god.com.table.service.GodTableVO;

@Service
public class GodTableServiceImpl extends EgovAbstractServiceImpl implements GodTableService {

	@Autowired
	private GodTableDAO dao;

	@Resource(name = "godTableIdGnrService")
	private EgovIdGnrService godTableIdGnrService;

	@Autowired
	@Qualifier(value = "excelTableService")
	private EgovExcelService egovExcelService;

	@Override
	public String insert(GodTableVO vo) {
		egovLogger.debug("vo=" + vo);
		return dao.insert(vo);
	}

	@Override
	public List<String> insert(List<GodTableVO> vos) {
		return dao.insert(vos);
	}

	@Override
	public int update(GodTableVO vo) {
		return dao.update(vo);
	}

	@Override
	public int delete(GodTableVO vo) {
		return dao.delete(vo);
	}

	@Override
	public GodTableVO select(GodTableVO vo) {
		return dao.select(vo);
	}

	@Override
	public EgovMap selectEgovMap(GodTableVO vo) {
		return dao.selectEgovMap(vo);
	}

	@Override
	public List<EgovMap> selectList(GodTableVO vo) {
		return dao.selectList(vo);
	}

	@Override
	public void insertForm(GodTableVO vo, Model model) {
		// if (StringUtils.isEmpty(vo.getColumnNm())) {
		// vo.setColumnNm("신규");
		// }

		model.addAttribute("action", "insert.do");
		model.addAttribute("submit", "저장");
	}

	@Override
	public void insert(GodTableVO vo, Model model) {
		try {
			vo.setTableId(godTableIdGnrService.getNextStringId());
		} catch (FdlException e) {
			egovLogger.error(e.getMessage());
		}

		vo.setUseAt("Y");

		vo.setFrstRegistPnttm(new Date());
		vo.setFrstRegisterId("god");

		String result = dao.insert(vo);

		model.addAttribute("result", result);
	}

	@Override
	public void updateForm(GodTableVO vo, Model model) {
		model.addAttribute("action", "update.do");
		model.addAttribute("submit", "수정");

		vo.setUseAt("Y");
		GodTableVO result = dao.select(vo);
		model.addAttribute("godTableVO", result);
	}

	@Override
	public void update(GodTableVO vo, Model model) {
		vo.setLastUpdtPnttm(new Date());
		vo.setLastUpdusrId("god");

		int result = dao.update(vo);

		model.addAttribute("result", result);
	}

	@Override
	public void delete(GodTableVO vo, Model model) {
		int result = 0;
		if (vo.getTableIds() != null) {
			for (String tableId : vo.getTableIds()) {
				GodTableVO vo2 = new GodTableVO();
				vo2.setTableId(tableId);
				vo2.setUseAt("N");
				vo.setLastUpdtPnttm(new Date());
				vo.setLastUpdusrId("god");
				int result2 = dao.delete(vo2);
				result += result2;
			}
		}
		model.addAttribute("result", result);
	}

	@Override
	public void uploadExcel(GodTableVO vo, Model model) {
		@SuppressWarnings("unchecked")
		List<FileVO> fvoList = (List<FileVO>) model.asMap().get("fvoList");
		int i = 0;
		for (FileVO fvo : fvoList) {
			if (i == 0) {
				try {
					InputStream fileIn = new FileInputStream(new File(fvo.getFileStreCours(), fvo.getStreFileNm()));
					uploadExcel(vo, model, fileIn);
				} catch (FileNotFoundException e) {
					egovLogger.error(e.getMessage());
				}
			}
			i++;
		}

	}

	private void uploadExcel(GodTableVO vo, Model model, InputStream fileIn) {
		String queryId = "GodTableDAO.insert";
		// InputStream fileIn = null;
		short sheetIndex = 0;
		int start = 2;
		long commitCnt = 1;
		XSSFWorkbook wb = new XSSFWorkbook();

		int uploadExcel = 0;

		try {
			uploadExcel = egovExcelService.uploadExcel(queryId, fileIn, sheetIndex, start, commitCnt, wb);
		} catch (Exception e) {
			egovLogger.error(e.getMessage());
		}

		model.addAttribute("uploadExcel", uploadExcel);
	}

	@Override
	public void uploadExcel2(GodTableVO vo, Model model) {
		@SuppressWarnings("unchecked")
		List<FileVO> fvoList = (List<FileVO>) model.asMap().get("fvoList");
		int i = 0;
		for (FileVO fvo : fvoList) {
			if (i == 0) {
				InputStream fileIn = null;
				try {
					fileIn = new FileInputStream(new File(fvo.getFileStreCours(), fvo.getStreFileNm()));
				} catch (FileNotFoundException e) {
					egovLogger.error(e.getMessage());
				}
				XSSFWorkbook type = null;
				try {
					type = egovExcelService.loadWorkbook(fileIn, type);
				} catch (Exception e) {
					egovLogger.error(e.getMessage());
				}
				int uploadExcel = uploadExcel2(type);

				model.addAttribute("uploadExcel", uploadExcel);
			}
			i++;
		}
	}

	@SuppressWarnings("deprecation")
	public int uploadExcel2(Workbook type) {
		return (Integer) dao.getSqlMapClientTemplate().execute(new SqlMapClientCallback<Object>() {
			@Override
			public Object doInSqlMapClient(SqlMapExecutor executor) throws SQLException {

				executor.startBatch();

				Sheet sheet = type.getSheetAt(0);

				for (Row row : sheet) {
					int rowNum = row.getRowNum();

					if (rowNum < 2) {
						continue;
					}

					int cellnum = 0;
					String A = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String B = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String C = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String D = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String E = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String F = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String G = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String H = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String I = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String J = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String K = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String L = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String M = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String N = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String O = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String P = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String Q = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String R = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String S = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String T = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String U = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String V = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String W = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String X = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String Y = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String Z = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String AA = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String AB = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String AC = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String AD = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String AE = EgovExcelUtil.getValue(row.getCell(cellnum++));
					String AF = EgovExcelUtil.getValue(row.getCell(cellnum++));

					String tableId = A;
					String tableNm = B;
					String columnNm = C;
					String columnNm2 = D;
					String columnNm3 = E;
					String columnNm4 = F;
					String columnNm5 = G;
					String columnNm6 = H;
					String columnNm7 = I;
					String columnNm8 = J;
					String columnNm9 = K;
					String columnNm10 = L;
					String columnNm11 = M;
					String columnNm12 = N;
					String columnNm13 = O;
					String columnNm14 = P;
					String columnNm15 = Q;
					String columnNm16 = R;
					String columnNm17 = S;
					String columnNm18 = T;
					String columnNm19 = U;
					String columnNm20 = V;
					String columnNm21 = W;
					String columnNm22 = X;
					String columnNm23 = Y;
					// String columnNm24 = Z;
					// String columnNm25 = AA;
					// String columnNm26 = AB;
					// String columnNm27 = AC;
					// String columnNm28 = AD;
					// String columnNm29 = AE;
					// String columnNm30 = AF;
					String useAt = Z;
					Date frstRegistPnttm = new Date();
					String frstRegisterId = AB;
					Date lastUpdtPnttm = null;
					String lastUpdusrId = AD;

					GodTableVO vo = new GodTableVO();
					vo.setTableId(tableId);
					vo.setTableNm(tableNm);
					vo.setColumnNm(columnNm);
					vo.setColumnNm2(columnNm2);
					vo.setColumnNm3(columnNm3);
					vo.setColumnNm4(columnNm4);
					vo.setColumnNm5(columnNm5);
					vo.setColumnNm6(columnNm6);
					vo.setColumnNm7(columnNm7);
					vo.setColumnNm8(columnNm8);
					vo.setColumnNm9(columnNm9);
					vo.setColumnNm10(columnNm10);
					vo.setColumnNm11(columnNm11);
					vo.setColumnNm12(columnNm12);
					vo.setColumnNm13(columnNm13);
					vo.setColumnNm14(columnNm14);
					vo.setColumnNm15(columnNm15);
					vo.setColumnNm16(columnNm16);
					vo.setColumnNm17(columnNm17);
					vo.setColumnNm18(columnNm18);
					vo.setColumnNm19(columnNm19);
					vo.setColumnNm20(columnNm20);
					vo.setColumnNm21(columnNm21);
					vo.setColumnNm22(columnNm22);
					vo.setColumnNm23(columnNm23);
					// vo.setColumnNm24(columnNm24);
					// vo.setColumnNm25(columnNm25);
					// vo.setColumnNm26(columnNm26);
					// vo.setColumnNm27(columnNm27);
					// vo.setColumnNm28(columnNm28);
					// vo.setColumnNm29(columnNm29);
					// vo.setColumnNm30(columnNm30);
					vo.setUseAt(useAt);
					vo.setFrstRegistPnttm(frstRegistPnttm);
					vo.setFrstRegisterId(frstRegisterId);

					if (StringUtils.isEmpty(A)) {
						try {
							vo.setTableId(godTableIdGnrService.getNextStringId());
						} catch (FdlException e) {
							egovLogger.error(e.getMessage());
						}
						executor.insert("GodTableDAO.insert", vo);
					} else {
						executor.update("GodTableDAO.update", vo);
					}
				}

				return executor.executeBatch();
			}
		});
	}

}
