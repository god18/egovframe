package god.com.table.service;

import java.util.List;

import org.springframework.ui.Model;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface GodTableService {

	String insert(GodTableVO vo);

	List<String> insert(List<GodTableVO> vos);

	int update(GodTableVO vo);

	int delete(GodTableVO vo);

	GodTableVO select(GodTableVO vo);

	EgovMap selectEgovMap(GodTableVO vo);

	List<EgovMap> selectList(GodTableVO vo);

	void insertForm(GodTableVO vo, Model model);

	void insert(GodTableVO vo, Model model);

	void updateForm(GodTableVO vo, Model model);

	void update(GodTableVO vo, Model model);

	void delete(GodTableVO vo, Model model);

}
