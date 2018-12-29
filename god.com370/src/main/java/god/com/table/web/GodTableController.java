package god.com.table.web;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import egovframework.com.cmm.service.EgovFileMngService;
import egovframework.com.cmm.service.EgovFileMngUtil;
import egovframework.com.cmm.service.FileVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;
import god.com.table.service.GodTableService;
import god.com.table.service.GodTableVO;

@Controller
public class GodTableController {

	@Autowired
	private GodTableService service;

	@Autowired
	private EgovFileMngUtil egovFileMngUtil;

	@Autowired
	private EgovFileMngService egovFileMngService;

	protected Logger egovLogger = LoggerFactory.getLogger(this.getClass());

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

	@RequestMapping("/table/uploadExcel.do")
	public String uploadExcel(GodTableVO vo, Model model, MultipartHttpServletRequest request) {
		parseFileInf(vo, model, request);
		service.uploadExcel(vo, model);
		return "god/com/table/uploadExcel";
	}

	private void parseFileInf(GodTableVO vo, Model model, MultipartHttpServletRequest request) {
		Map<String, MultipartFile> files = request.getFileMap();
		String KeyStr = "TBLE_";
		int fileKeyParam = 0;
		String atchFileId = null;
		String storePath = null;

		List<FileVO> fvoList = null;

		try {
			fvoList = egovFileMngUtil.parseFileInf(files, KeyStr, fileKeyParam, atchFileId, storePath);
		} catch (Exception e) {
			egovLogger.error(e.getMessage());
		}

		for (FileVO fvo : fvoList) {
			egovLogger.debug("fvo" + fvo);
			try {
				int fileSn = egovFileMngService.getMaxFileSN(fvo);
				fvo.setFileSn(String.valueOf(fileSn));
			} catch (Exception e) {
				egovLogger.error(e.getMessage());
			}
		}

		String insertFileInfs = null;
		try {
			insertFileInfs = egovFileMngService.insertFileInfs(fvoList);
		} catch (Exception e) {
			egovLogger.error(e.getMessage());
		}
		egovLogger.debug("insertFileInfs" + insertFileInfs);

		model.addAttribute("fvoList", fvoList);
	}

}
