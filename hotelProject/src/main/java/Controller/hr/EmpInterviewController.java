package Controller.hr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EmpInterviewController {
	@RequestMapping("personnel/contract")
	public String contract(@RequestParam(value="num") Long num) {
		return "hr/contractEmp";
	}
}