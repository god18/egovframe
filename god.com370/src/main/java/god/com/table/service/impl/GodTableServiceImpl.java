package god.com.table.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import egovframework.com.cmm.service.FileVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.cmmn.exception.FdlException;
import egovframework.rte.fdl.excel.EgovExcelService;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import egovframework.rte.psl.dataaccess.util.EgovMap;
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

}
