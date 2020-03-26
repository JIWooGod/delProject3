package Controller.lecture;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.lecture.LectureDeletingSerivce;

@Controller
public class LectureDeletingController {
	@Autowired
	private LectureDeletingSerivce lectureDeletingSerivce;
	
	@RequestMapping("lecture/deleting")
	public String delete(@RequestParam(value="num") Long num) {
		lectureDeletingSerivce.action(num);
		return "redirect:/lecture";
	}
}
