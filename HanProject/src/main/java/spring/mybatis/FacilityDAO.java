package spring.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import spring.command.FacilityCommand;


@Component
public class FacilityDAO extends SqlSessionDaoSupport {

	@Autowired
	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<FacilityCommand> board_selectList(int p_number){
		List<FacilityCommand> list = getSqlSession().selectList("facility.selectList", p_number); 
		
		return list;
	}
	
}
