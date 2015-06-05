package spring.mybatis;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import spring.command.UserInfo;

public class UserDAO  extends SqlSessionDaoSupport{

	public int insert(UserInfo useri) {
		int x = getSqlSession().insert("JoinMap.insert", useri);
		return x;
	}
	
	public int countId(String id) {
		int x = getSqlSession().selectOne("JoinMap.countId", id);
		return x;
	}
	
	public int countNick(String nick) {
		int x = getSqlSession().selectOne("JoinMap.countNick", nick);
		return x;
	}
	
	public int countEmail(String email) {
		int x = getSqlSession().selectOne("JoinMap.countEmail", email);
		return x;
	}
		
	
	public int isId(UserInfo id) {
		int x = getSqlSession().selectOne("JoinMap.isId", id);
		return x;
	}
}
