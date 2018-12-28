package god.com.table.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import god.com.table.service.GodTableVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath*:egovframework/spring/com/**/context-*.xml",
		"classpath*:god/spring/com/**/context-*.xml" })
public class GodTableDAOTest {

	protected Logger egovLogger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private GodTableDAO dao;

	@Resource(name = "godTableIdGnrService")
	private EgovIdGnrService godTableIdGnrService;

	@Test
	public void test() throws Exception {
		insert();
	}

	public void insert() throws Exception {
		GodTableVO vo = new GodTableVO();
		String tableId = godTableIdGnrService.getNextStringId();
		egovLogger.debug("tableId=" + tableId);
		vo.setTableId(tableId);
		vo.setUseAt("Y");
		vo.setFrstRegistPnttm(new Date());
		vo.setFrstRegisterId("god");

		String insert = dao.insert(vo);

		egovLogger.debug("insert=" + insert);
	}

}
