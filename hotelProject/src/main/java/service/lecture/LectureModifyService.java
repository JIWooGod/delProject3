package service.lecture;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import command.hr.SubjectCommand;
import model.dto.hr.SubjectDTO;
import repository.lecture.LectureDetailRepository;

public class LectureModifyService {
	final String PATH = "\\lec\\video\\";
	@Autowired
	private LectureDetailRepository lectureDetailRepository;

	public void action(HttpServletRequest request, SubjectCommand subjectCommand, Model model) {
		String realPath = request.getServletContext().getRealPath(PATH);
		String origin = null;
		String store = null;
		
		SubjectDTO dto = new SubjectDTO();
		dto.setSubjName(subjectCommand.getSubjName());
		dto.setSubjCnt(subjectCommand.getSubjCnt());
		dto.setSubjDay(subjectCommand.getSubjDay());
		dto.setSubjFileSize(size);
		dto.setSubjStore(store);
		dto.setSubjOrigin(origin);
		
		lectureDetailRepository.reposit(dto);
		model.addAttribute("list",dto);
	}

}
