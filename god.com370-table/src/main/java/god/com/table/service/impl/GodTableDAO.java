package god.com.table.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.rte.psl.dataaccess.util.EgovMap;
import god.com.table.service.GodTableVO;

@Repository
public class GodTableDAO extends EgovComAbstractDAO {

	public String insert(GodTableVO vo) {
		logger.debug("vo=" + vo);
		return (String) insert("GodTableDAO.insert", vo);
	}

	public List<String> insert(List<GodTableVO> vos) {
		List<String> strings = new ArrayList<>();
		logger.debug("vos=" + vos);
		for (GodTableVO vo : vos) {
			strings.add((String) insert("GodTableDAO.insert", vo));
		}
		return strings;
	}

	public int update(GodTableVO vo) {
		return update("GodTableDAO.update", vo);
	}

	public int delete(GodTableVO vo) {
		return delete("GodTableDAO.delete", vo);
	}

	public GodTableVO select(GodTableVO vo) {
		return (GodTableVO) select("GodTableDAO.select", vo);
	}

	public EgovMap selectEgovMap(GodTableVO vo) {
		return (EgovMap) select("GodTableDAO.select", vo);
	}

	@SuppressWarnings("unchecked")
	public List<EgovMap> selectList(GodTableVO vo) {
		return (List<EgovMap>) list("GodTableDAO.selectList", vo);
	}

}
