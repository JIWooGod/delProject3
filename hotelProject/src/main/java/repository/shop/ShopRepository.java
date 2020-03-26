package repository.shop;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.dto.shop.shopDTO;

public class ShopRepository {
	@Autowired
	SqlSession sqlSession;
	private final String namespace = "shopMapper";
	
	public List<shopDTO> goodsList() {
		String statement = namespace + ".goodsList";
		return sqlSession.selectList(statement);
	}

}
