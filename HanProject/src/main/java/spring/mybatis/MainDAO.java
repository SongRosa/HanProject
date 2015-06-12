package spring.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

import spring.command.MainNoticeCommand;

public class MainDAO extends SqlSessionDaoSupport {
	
	@Autowired
	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public List<MainNoticeCommand> notice(){
		return sqlSession.selectList("main.select");
	}
	
}
