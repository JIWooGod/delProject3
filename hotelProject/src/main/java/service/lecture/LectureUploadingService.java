package service.lecture;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import command.hr.SubjectCommand;
import model.dto.hr.SubjectDTO;
import repository.lecture.LectureUploadingRepository;

@Service
public class LectureUploadingService {
	@Autowired
	private LectureUploadingRepository lectureUploadingRepository;
	
	public void action(SubjectCommand subjectCommand, Model model) {
		SubjectDTO dto = new SubjectDTO();
		dto.setSubjName(subjectCommand.getSubjName());
		dto.setSubjCnt(subjectCommand.getSubjCnt());
		
		String origin = null;
		String extend = null;
		String store = null;
		
		lectureUploadingRepository.reposit(dto);
	}
}
