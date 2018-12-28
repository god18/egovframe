package god.com.table.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.rte.psl.dataaccess.util.EgovMap;
import god.com.table.service.GodTableService;
import god.com.table.service.GodTableVO;

@Controller
public class GodTableController {

	@Autowired
	private GodTableService service;

	@RequestMapping("/table/selectList.do")
	public String selectList(GodTableVO vo, Model model) {
		vo.setUseAt("Y");
		List<EgovMap> results = service.selectList(vo);
		model.addAttribute("results", results);
		return "god/com/table/selectList";
	}

	@RequestMapping("/table/insertForm.do")
	public String insertForm(GodTableVO vo, Model model) {
		service.insertForm(vo, model);
		return "god/com/table/insertForm";
	}

	@RequestMapping("/table/insert.do")
	public String insert(GodTableVO vo, Model model) {
		service.insert(vo, model);
		return "god/com/table/insert";
	}

	@RequestMapping("/table/updateForm.do")
	public String updateForm(GodTableVO vo, Model model) {
		service.updateForm(vo, model);
		return "god/com/table/insertForm";
	}

	@RequestMapping("/table/update.do")
	public String update(GodTableVO vo, Model model) {
		service.update(vo, model);
		return "god/com/table/insert";
	}

	@RequestMapping("/table/delete.do")
	public String delete(GodTableVO vo, Model model) {
		service.delete(vo, model);
		return "god/com/table/delete";
	}

}
