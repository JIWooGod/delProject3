package service.lecture;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import command.hr.SubjectCommand;
import model.dto.hr.SubjectDTO;
import repository.lecture.FileGetRepository;
import repository.lecture.LectureModifyRepository;

@Service
public class LectureModifyService {
	final String PATH = "\\lec\\video\\";
	@Autowired
	private LectureModifyRepository lectureModifyRepository;
	@Autowired
	private FileGetRepository fileGetRepository;

	public void action(HttpServletRequest request, SubjectCommand subjectCommand,
			Model model, Long num) {
		SubjectDTO dto = new SubjectDTO();
		dto.setSubjNo(num);
		dto.setSubjName(subjectCommand.getSubjName());
		dto.setSubjCnt(subjectCommand.getSubjCnt());
		dto.setSubjDay(subjectCommand.getSubjDay());
		if(subjectCommand.getSubjVideo()!=null) {
			MultipartFile mf = subjectCommand.getSubjVideo();
		
			String realPath = request.getServletContext().getRealPath(PATH);
			String origin = mf.getOriginalFilename();
			String extension = origin.substring(origin.lastIndexOf("."));
			String store = UUID.randomUUID().toString()+extension;
			String size = Long.toString(mf.getSize());
			String past = fileGetRepository.reposit(num);
			
			System.out.println("옛날 파일 이름: "+past);
			System.out.println("새 파일 이름: "+origin);
			
			File file = new File(realPath + "\\" + past);
			file.delete();
			file = new File(realPath + "\\" + store);
			try {
				mf.transferTo(file);
			}catch (Exception e) {
				System.out.println("============파일 용량 초과============");
				e.printStackTrace();
			}
			dto.setSubjFileSize(size);
			dto.setSubjStore(store);
			dto.setSubjOrigin(origin);
		}
		lectureModifyRepository.reposit(dto);
		model.addAttribute("list",dto);
	}
}
