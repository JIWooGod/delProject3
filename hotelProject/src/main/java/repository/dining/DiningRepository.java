package repository.dining;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.dto.dining.Menu2DTO;
import model.dto.dining.Menu3DTO;
import model.dto.dining.MenuDTO;
import model.dto.dining.RstDTO;
import model.dto.dining.SeatPlaceDTO;

public class DiningRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "DiningMapper";
	
	public List<SeatPlaceDTO> seatPlace(Long rstNo) {
		String statement = namespace + ".seatPlace";
		return sqlSession.selectList(statement, rstNo);
	}
	
	public void tblInsert(SeatPlaceDTO dto) {
		String statement = namespace + ".tblInsert";
		sqlSession.insert(statement, dto);
	}

	public void menuInsert(MenuDTO dto) {
		String statement = namespace + ".menuInsert";
		sqlSession.insert(statement, dto);
	}

	//메뉴판리스트
	public List<MenuDTO> menuSelect(Long rstNo) {
		String statement = namespace + ".menuSelect";
		return sqlSession.selectList(statement, rstNo);
	}

	public MenuDTO menuOneSelect(MenuDTO dto) {
		String statement = namespace + ".menuOneSelect";
		return sqlSession.selectOne(statement, dto);
	}

	public void menuUpdate(MenuDTO dto) {
		String statement = namespace + ".menuUpdate";
		sqlSession.update(statement, dto);
	}

	public void d1menuDelete(MenuDTO dto) {
		String statement = namespace + ".menuDelete";
		sqlSession.delete(statement, dto);
	}

	public void d1tblDelete(Long rstTbl) {
		String statement = namespace + ".tblDelete";
		sqlSession.delete(statement, rstTbl);
	}

	public RstDTO selectRst(Long rstNo) {
		String statement = namespace + ".rstSelect";
		return sqlSession.selectOne(statement, rstNo);
	}

	public List<MenuDTO> menu1Select() {
		String statement = namespace + ".mgmenu1";
		return sqlSession.selectList(statement);
	}

	public List<Menu2DTO> menu2Select() {
		String statement = namespace + ".mgmenu2";
		return sqlSession.selectList(statement);
	}

	public List<Menu3DTO> menu3Select() {
		String statement = namespace + ".mgmenu3";
		return sqlSession.selectList(statement);
	}

	
}







