package repository.room;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.dto.room.ReservationDTO;
import model.dto.room.RoomDTO;



@Repository
public class RoomRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "roomMapper";
	
	public void insertRoom(RoomDTO dto)
	{
		String statement = namespace+".insertRoom";
		sqlSession.insert(statement,dto);
	}
	public RoomDTO roomReservation(String roomGrade)
	{
		String statement = namespace+".reservation";
		return sqlSession.selectOne(statement,roomGrade);
	}
	
	public RoomDTO selectRoom(ReservationDTO dto)
	{
		String statement = namespace+".selectRoom";
		return sqlSession.selectOne(statement,dto);
	}
}
