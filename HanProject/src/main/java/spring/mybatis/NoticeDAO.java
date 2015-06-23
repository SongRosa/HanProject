package spring.mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import spring.command.NoticeCommand;

@Component
public class NoticeDAO extends SqlSessionDaoSupport {
	
	@Autowired
	SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<NoticeCommand> selectAll(){
		List<NoticeCommand> list = sqlSession.selectList("notice.selectAll");
		
		return list;
	}
	public NoticeCommand selectOne(int i){
		NoticeCommand command = sqlSession.selectOne("notice.selectOne", i);
		return command;
	}
	
	public void updateN_count(int i){
		sqlSession.update("notice.update_n_count", i);
		
	}
	
	public int insertOne(NoticeCommand nc){
		int i = sqlSession.insert("notice.insertOne", nc);
		
		return i;
	}
	
	public int deleteOne(int i){
		int j = sqlSession.delete("notice.deleteOne", i);
		
		return j;
	}
	
	public int updateOne(NoticeCommand nc){
		int i = sqlSession.update("notice.updateOne", nc);
		
		return i;
	}
	
	
	

}
