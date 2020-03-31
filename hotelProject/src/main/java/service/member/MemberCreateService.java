package service.member;

import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import command.member.MemberCommand;
import model.dto.member.MemberDTO;
import repository.member.MemberRepository;

public class MemberCreateService {
	@Autowired
	private MemberRepository memberRepository;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	public void execute(MemberCommand memberCommand) {
		MemberDTO dto = new MemberDTO();
		SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-DD");
		dto.setUserId(memberCommand.getUserId());
		dto.setUserPw(bCryptPasswordEncoder.encode(memberCommand.getUserPw()));
		dto.setUserName(memberCommand.getUserName());
		dto.setUserEmail(memberCommand.getUserEmail());
		dto.getUserAddr(memberCommand.getUserAddr());
		
		memberRepository.memInsert();
	}

}
