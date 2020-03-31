package Controller.Member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import command.member.MemberCommand;
import service.member.MemberCreateService;

@Controller
public class MemberController {
	@Autowired
	private MemberCreateService memberCreateService;
	
	@RequestMapping("/signInForm")
	public String signInForm() {
		return "member/signInForm";
	}
	
	@RequestMapping("/memCreate")
	public String memCreate(MemberCommand memberCommand) {
		memberCreateService.execute(memberCommand);
		return "redirect:/main";
	}
}



















