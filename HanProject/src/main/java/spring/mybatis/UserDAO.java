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
		
	
	public int isId(UserInfo ui) {
		int x = getSqlSession().selectOne("JoinMap.isId", ui);
		return x;
	}
	
	public int isId2(UserInfo useri) {
		int x = getSqlSession().selectOne("SearchMap.isId", useri);
		return x;
	}
	
	public UserInfo selectId(UserInfo useri) {
		UserInfo id = getSqlSession().selectOne("SearchMap.selectId", useri);
		return id;
	}
	
	public int isPwd2(UserInfo useri) {
		int x = getSqlSession().selectOne("SearchMap.isPwd", useri);
		return x;
	}
	
	public UserInfo selectPwd(UserInfo useri) {
		UserInfo pwd = getSqlSession().selectOne("SearchMap.selectPwd", useri);
		return pwd;
	}
}
