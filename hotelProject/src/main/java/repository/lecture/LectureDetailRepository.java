package repository.lecture;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.dto.hr.SubjectDTO;

@Repository
public class LectureDetailRepository {
	String namespace = "lectureMapper";
	String statement = null;
	@Autowired
	private SqlSession sqlSession;
	
	public void reposit(SubjectDTO dto) {
		statement = namespace + ".videoView";
		sqlSession.selectOne(statement, dto);
	}

}
