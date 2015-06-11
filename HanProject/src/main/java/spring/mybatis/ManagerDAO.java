package spring.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import spring.command.ManagerCommand;

@Component
public class ManagerDAO extends SqlSessionDaoSupport{
	
	@Autowired
	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<ManagerCommand> manager_select(){
		List<ManagerCommand> list = getSqlSession().selectList("manager.select");
		
		return list;
	}
	
	public int manager_delete(String id){
		int i = getSqlSession().delete("manager.delete", id);
		
		return i;
	}
}
