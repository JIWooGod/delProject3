package Controller.lecture;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.hr.SubjectCommand;
import service.lecture.LectureUploadingService;

@Controller
public class LectureUpController {
	@Autowired
	private LectureUploadingService lectureUploadingService;
	
	@RequestMapping("/lecture/upload")
	public String upload() {
		return "lec/lectureUp";
	}
	@RequestMapping(value="/lecture/admin/uploading", method=RequestMethod.POST)
	public String upload2(SubjectCommand subjectCommand, Model model) {
		lectureUploadingService.action(subjectCommand, model);
		return "redirect:/lecture";
	}
}