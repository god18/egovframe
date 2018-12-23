package egovframework.com.cmm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import egovframework.com.cmm.ComDefaultCodeVO;
import egovframework.com.cmm.service.CmmnDetailCode;
import egovframework.com.cmm.service.EgovCmmUseService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath*:egovframework/spring/com/**/context-*.xml" })
public class EgovCmmUseServiceImplTest {

	protected Logger egovLogger = LoggerFactory.getLogger(this.getClass());

	@Resource(name = "EgovCmmUseService")
	private EgovCmmUseService egovCmmUseService;

	@Test
	public void test() throws Exception {
		selectCmmCodeDetail();
	}

	public void selectCmmCodeDetail() throws Exception {
		ComDefaultCodeVO vo = new ComDefaultCodeVO();
		vo.setCodeId("COM001");

		List<CmmnDetailCode> results = egovCmmUseService.selectCmmCodeDetail(vo);

		egovLogger.debug("results=" + results);

		for (CmmnDetailCode result : results) {
			egovLogger.debug("result=" + result);
			egovLogger.debug("getCode=" + result.getCode());
			egovLogger.debug("getCodeDc=" + result.getCodeDc());
			egovLogger.debug("getCodeId=" + result.getCodeId());
			egovLogger.debug("getCodeIdNm=" + result.getCodeIdNm());
			egovLogger.debug("getCodeNm=" + result.getCodeNm());
			egovLogger.debug("getFrstRegisterId=" + result.getFrstRegisterId());
			egovLogger.debug("getLastUpdusrId=" + result.getLastUpdusrId());
			egovLogger.debug("getUseAt=" + result.getUseAt());
		}
	}

}
