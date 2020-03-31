package repository.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

public class MemberRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "MemberMapper";
	
	public void memInsert() {
		String statement = namespace + ".memInsert";
		sqlSession.insert(statement);
	}
	
	
}
