package spring.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import spring.command.BoardCommand;
import spring.command.BoardGroupingCommand;

@Component
public class BoardDAO extends SqlSessionDaoSupport {
	
	@Autowired
	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public List<BoardCommand> board_selectList(){
		List<BoardCommand> list = getSqlSession().selectList("board.selectList"); 
		
		return list;
	}
	
	public List<BoardCommand> board_grouping_selectList(String g){
		List<BoardCommand> list = getSqlSession().selectList("board.grouping_selectList", g);
		return list;
	}
	
	public List<BoardCommand> board_search_subject(String str){
		List<BoardCommand> list = getSqlSession().selectList("board.search_subject", str);
		
		return list;
	}
	
	public List<BoardCommand> board_grouping_search_subject(BoardGroupingCommand bgc){
		List<BoardCommand> list = getSqlSession().selectList("board.grouping_search_subject", bgc);
		
		return list;
	}
	
	
	public List<BoardCommand> board_search_writer(String str){
		List<BoardCommand> list = getSqlSession().selectList("board.search_writer", str);
		
		return list;
	}
	
	public List<BoardCommand> board_grouping_search_writer(BoardGroupingCommand bgc){
		List<BoardCommand> list = getSqlSession().selectList("board.grouping_search_writer", bgc);
		
		return list;
	}
	
	public BoardCommand selectOne(int i){
		BoardCommand one = getSqlSession().selectOne("board.selectOne", i);
		
		return one;
	}
	
	public int update_b_count(int i){
		int j = getSqlSession().update("board.update_b_count", i);
		return j;
	}
	
	public int insertOne(BoardCommand bc){
		int i = getSqlSession().insert("board.insertOne", bc);
		return i;
	}
	
	public int updateOne(BoardCommand bc){
		int i = getSqlSession().update("board.updateOne", bc);
		return i;
	}
	
	public int deleteOne(int i){
		int j = getSqlSession().delete("board.deleteOne", i);
		return j;
	}

}
