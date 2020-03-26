package Controller.lecture;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.hr.SubjectCommand;
import service.lecture.LectureModifyService;
import service.lecture.LectureUploadingService;

@Controller
public class LectureModifyingController {
	@Autowired
	private LectureModifyService lectureModifyService;
	
	@RequestMapping(value="/lecture/modifying", method=RequestMethod.POST)
	public String modifying(@RequestParam(value="num") Long num, Model model,
			SubjectCommand subjectCommand, HttpServletRequest request) {
		lectureModifyService.action(request,subjectCommand,model);
		return "redirect:/lecture/"+num;
	}
}
