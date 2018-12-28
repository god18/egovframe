package god.com.table.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.psl.dataaccess.util.EgovMap;
import god.com.table.service.GodTableService;
import god.com.table.service.GodTableVO;

public class GodTableServiceImpl extends EgovAbstractServiceImpl implements GodTableService {

	@Autowired
	private GodTableDAO dao;

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

}
