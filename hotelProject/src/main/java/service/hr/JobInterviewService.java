package service.hr;

import org.springframework.ui.Model;

import command.hr.InterviewCommand;
import model.dto.hr.JobintvDTO;
import model.dto.hr.LecIntvDTO;

public class JobInterviewService {

	public void action(InterviewCommand command, Model model) {
		JobintvDTO dto = new JobintvDTO();
		
		dto.setEmpNo(command.getApplierNo());
		dto.setJobintvLang(command.getQ1st());
		dto.setJobintvServ(command.getQ2nd());
		command.getQ1st();
		command.getQ2nd();
		command.getQ3rd();
		command.getQ4th();
		command.getQ5th();
	}
}