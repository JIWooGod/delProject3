package repository.dining;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.dto.dining.MenuDTO;
import model.dto.dining.SeatPlaceDTO;

public class DiningRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "DiningMapper";
	
	public List<SeatPlaceDTO> seatPlace() {
		String statement = namespace + ".seatPlace";
		return sqlSession.selectList(statement);
	}
	
	public void tblInsert(SeatPlaceDTO dto) {
		String statement = namespace + ".tblInsert";
		sqlSession.insert(statement, dto);
	}

	public void menuInsert(MenuDTO dto) {
		String statement = namespace + ".menuInsert";
		sqlSession.insert(statement, dto);
	}

	public List<MenuDTO> menuSelect() {
		String statement = namespace + ".menuSelect";
		return sqlSession.selectList(statement);
	}

	public MenuDTO menuOneSelect(Long menuNo) {
		String statement = namespace + ".menuOneSelect";
		return sqlSession.selectOne(statement, menuNo);
	}

	public void menuUpdate(MenuDTO dto) {
		String statement = namespace + ".menuUpdate";
		sqlSession.update(statement, dto);
	}

	public void d1menuDelete(Long menuNo) {
		String statement = namespace + ".menuDelete";
		sqlSession.delete(statement, menuNo);
	}

	
}







