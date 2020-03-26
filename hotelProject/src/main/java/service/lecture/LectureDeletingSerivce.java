package service.lecture;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import repository.lecture.FileGetRepository;
import repository.lecture.LectureDeleteRepository;

@Service
public class LectureDeletingSerivce {
	@Autowired
	private LectureDeleteRepository lectureDeleteRepository;
	@Autowired
	private FileGetRepository fileGetRepository;
	
	public void action(HttpServletRequest request, Long num) {
		String path = "\\lec\\video\\";
		String realPath = request.getServletContext().getRealPath(path);;
		String store = fileGetRepository.reposit(num);
		if(store!=null) {
			File file = new File(realPath + "\\" + store);
			file.delete();
			System.out.println(store+"삭제하기");
			lectureDeleteRepository.reposit(num);
		}
	}
}