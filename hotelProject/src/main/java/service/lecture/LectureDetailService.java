package service.lecture;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.dto.hr.SubjectDTO;
import repository.lecture.LectureDetailRepository;

@Service
public class LectureDetailService {
	@Autowired
	LectureDetailRepository lectureDetailRepository;
	
	public void action(Long subjNo, Model model) {
		SubjectDTO dto = new SubjectDTO();
		dto.setSubjNo(subjNo);
		lectureDetailRepository.reposit(dto);
		
		//재생시간 insert
		model.addAttribute("list", dto);
	}
}
