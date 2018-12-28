package god.com.table.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface GodTableService {

	String insert(GodTableVO vo);

	List<String> insert(List<GodTableVO> vos);

	int update(GodTableVO vo);

	int delete(GodTableVO vo);

	GodTableVO select(GodTableVO vo);

	EgovMap selectEgovMap(GodTableVO vo);

	List<EgovMap> selectList(GodTableVO vo);

}
