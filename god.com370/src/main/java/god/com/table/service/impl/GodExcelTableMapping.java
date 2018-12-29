package god.com.table.service.impl;

import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.context.support.WebApplicationContextUtils;

import egovframework.rte.fdl.cmmn.exception.FdlException;
import egovframework.rte.fdl.excel.EgovExcelMapping;
import egovframework.rte.fdl.excel.util.EgovExcelUtil;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import god.com.table.service.GodTableVO;

public class GodExcelTableMapping extends EgovExcelMapping {

	protected Logger egovLogger = LoggerFactory.getLogger(this.getClass());

	/**
	 * 우편번호 엑셀파일 맵핑
	 */
	@Override
	public Object mappingColumn(Row row) {

		Cell cell0 = row.getCell(0);
		Cell cell1 = row.getCell(1);
		Cell cell2 = row.getCell(2);
		Cell cell3 = row.getCell(3);
		Cell cell4 = row.getCell(4);
		Cell cell5 = row.getCell(5);
		Cell cell6 = row.getCell(6);
		Cell cell7 = row.getCell(7);
		Cell cell8 = row.getCell(8);
		Cell cell9 = row.getCell(9);
		Cell cell10 = row.getCell(10);
		Cell cell11 = row.getCell(11);
		Cell cell12 = row.getCell(12);
		Cell cell13 = row.getCell(13);
		Cell cell14 = row.getCell(14);
		Cell cell15 = row.getCell(15);
		Cell cell16 = row.getCell(16);
		Cell cell17 = row.getCell(17);
		Cell cell18 = row.getCell(18);
		Cell cell19 = row.getCell(19);
		Cell cell20 = row.getCell(20);
		Cell cell21 = row.getCell(21);
		Cell cell22 = row.getCell(22);
		Cell cell23 = row.getCell(23);
		Cell cell24 = row.getCell(24);
		Cell cell25 = row.getCell(25);
		Cell cell26 = row.getCell(26);
		Cell cell27 = row.getCell(27);
		Cell cell28 = row.getCell(28);
		Cell cell29 = row.getCell(29);
		Cell cell30 = row.getCell(30);
		Cell cell31 = row.getCell(31);

		String A = EgovExcelUtil.getValue(cell0);
		String B = EgovExcelUtil.getValue(cell1);
		String C = EgovExcelUtil.getValue(cell2);
		String D = EgovExcelUtil.getValue(cell3);
		String E = EgovExcelUtil.getValue(cell4);
		String F = EgovExcelUtil.getValue(cell5);
		String G = EgovExcelUtil.getValue(cell6);
		String H = EgovExcelUtil.getValue(cell7);
		String I = EgovExcelUtil.getValue(cell8);
		String J = EgovExcelUtil.getValue(cell9);
		String K = EgovExcelUtil.getValue(cell10);
		String L = EgovExcelUtil.getValue(cell11);
		String M = EgovExcelUtil.getValue(cell12);
		String N = EgovExcelUtil.getValue(cell13);
		String O = EgovExcelUtil.getValue(cell14);
		String P = EgovExcelUtil.getValue(cell15);
		String Q = EgovExcelUtil.getValue(cell16);
		String R = EgovExcelUtil.getValue(cell17);
		String S = EgovExcelUtil.getValue(cell18);
		String T = EgovExcelUtil.getValue(cell19);
		String U = EgovExcelUtil.getValue(cell20);
		String V = EgovExcelUtil.getValue(cell21);
		String W = EgovExcelUtil.getValue(cell22);
		String X = EgovExcelUtil.getValue(cell23);
		String Y = EgovExcelUtil.getValue(cell24);
		String Z = EgovExcelUtil.getValue(cell25);
		String AA = EgovExcelUtil.getValue(cell26);
		String AB = EgovExcelUtil.getValue(cell27);
		String AC = EgovExcelUtil.getValue(cell28);
		String AD = EgovExcelUtil.getValue(cell29);
		String AE = EgovExcelUtil.getValue(cell30);
		String AF = EgovExcelUtil.getValue(cell31);

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

		if (StringUtils.isEmpty(tableId)) {
			HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes())
					.getRequest();
			HttpSession session = request.getSession();
			ServletContext sc = session.getServletContext();
			WebApplicationContext wac = WebApplicationContextUtils.getWebApplicationContext(sc);
			EgovIdGnrService godTableIdGnrService = (EgovIdGnrService) wac.getBean("godTableIdGnrService");
			try {
				tableId = godTableIdGnrService.getNextStringId();
			} catch (FdlException e) {
				egovLogger.error(e.getMessage());
			}
		}

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

		return vo;
	}

}
