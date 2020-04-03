package Controller.hr;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.hr.ApplyCommand;
import service.hr.ApplyService;

@Controller
public class ApplyEmpController {
	@Autowired
	private ApplyService applyService;
	
	@RequestMapping("/personnel/staff/apply")
	public String empApply(@RequestParam(value="job") String job, Model model) {
		model.addAttribute("job",job);
		model.addAttribute("applyCommand",new ApplyCommand());
		return "hr/apply";
	}
	@RequestMapping(value="/personnel/staff/appling", method=RequestMethod.POST)
	public String empApplying(HttpServletRequest request,ApplyCommand applyCommand,
			Model model,Errors errors,@RequestParam(value="job") String job) {
		//new ApplyCommandValidator().validate(applyCommand,errors);	
		applyService.action(request,applyCommand,errors);
		return "redirect:/main";
	}
	@RequestMapping("/applyMailing")
	public String mailing(@RequestParam(value="num") String num,
			@RequestParam(value="reciver") String reciver,
			@RequestParam(value="empId") String empId) {
		Integer i = applyService.joinAction(num, reciver, empId);
		if(i>0) {
			return "hr/success";
		}else {
			return "hr/fail";
		}
	}
}
