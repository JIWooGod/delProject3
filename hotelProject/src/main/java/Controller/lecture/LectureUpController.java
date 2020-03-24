package Controller.lecture;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LectureUpController {
	@RequestMapping("/lecture/upload")
	public String upload() {
		return "hr/lectureUp";
	}
}