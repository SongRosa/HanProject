package spring.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import spring.command.BoardCommand;
import spring.command.BoardListCommand;

@Component
public class BoardDAO extends SqlSessionDaoSupport {
	
	@Autowired
	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public List<BoardListCommand> board_selectList(){
		List<BoardListCommand> list = getSqlSession().selectList("board.selectList"); 
		
		return list;
	}
	
	public List<BoardCommand> board_search_subject(String str){
		List<BoardCommand> list = getSqlSession().selectList("board.search_subject", str);
		
		return list;
	}
	
	public List<BoardCommand> board_search_writer(String str){
		List<BoardCommand> list = getSqlSession().selectList("board.search_writer", str);
		
		return list;
	}
	
	public BoardCommand selectOne(int i){
		BoardCommand one = getSqlSession().selectOne("board.selectOne", i);
		
		return one;
	}

}
