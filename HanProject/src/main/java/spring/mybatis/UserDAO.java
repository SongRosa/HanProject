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
	public int outisId(String id,String pwd) {
		UserInfo d = new UserInfo();
		d.setId(id);
		d.setPwd(pwd);
		int x = getSqlSession().selectOne("JoinMap.isId", d);
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
	
	public int selectId2(String id, String pwd) {
		UserInfo d = new UserInfo();
		d.setId(id);
		d.setPwd(pwd);
		int x = getSqlSession().selectOne("mypageMap.selectId", d);
		return x;
	}
	
	public int isPwd2(UserInfo useri) {
		int x = getSqlSession().selectOne("SearchMap.isPwd", useri);
		return x;
	}
	
	public UserInfo selectPwd(UserInfo useri) {
		UserInfo pwd = getSqlSession().selectOne("SearchMap.selectPwd", useri);
		return pwd;
	}
	
	public UserInfo tempPwd(UserInfo useri) {
		UserInfo tempPwd = getSqlSession().selectOne("SearchMap.tempPwd", useri);
		return tempPwd;
	}
	
	public UserInfo updatePwd(String id, String pwd){
		UserInfo d = new UserInfo();
		d.setId(id);
		d.setPwd(pwd);
		UserInfo x = getSqlSession().selectOne("mypageMap.updatePwd", d);
		return x;
	}
	
	public UserInfo updateNick(String id, String Nick){
		UserInfo d = new UserInfo();
		d.setId(id);
		d.setNick(Nick);
		UserInfo x = getSqlSession().selectOne("mypageMap.updateNick", d);
		return x;
	}
	public UserInfo selectInfo(UserInfo useri){
		UserInfo info = getSqlSession().selectOne("mypageMap.selectInfo", useri);
		return info;
	}
	
	public UserInfo updateTel(String id, String tel){
		UserInfo d = new UserInfo();
		d.setId(id);
		d.setTel(tel);
		UserInfo x = getSqlSession().selectOne("mypageMap.updateTel", d);
		return x;
	}
	
	
	public UserInfo updateName(String id, String name){
		UserInfo d = new UserInfo();
		d.setId(id);
		d.setName(name);
		UserInfo x = getSqlSession().selectOne("mypageMap.updateName", d);
		return x;
	}
	
	
	public UserInfo updateEmail(String id, String email){
		UserInfo d = new UserInfo();
		d.setId(id);
		d.setEmail(email);
		UserInfo x = getSqlSession().selectOne("mypageMap.updateEmail", d);
		return x;
	}
	
	
	public UserInfo updateAddress(String id, String address,String zipcode){
		UserInfo d = new UserInfo();
		d.setId(id);
		d.setZipcode(zipcode);
		d.setAddress(address);
		UserInfo x = getSqlSession().selectOne("mypageMap.updateAddress", d);
		return x;
	}
	
	
	public UserInfo deleteMem(String id, String pwd){
		UserInfo d = new UserInfo();
		d.setId(id);
		d.setPwd(pwd);
		UserInfo x = getSqlSession().selectOne("mypageMap.deleteMem", d);
		return x;
	}
	
/*	public UserInfo updateAllInfo(String id,UserInfo useri){
		useri.setId(id);
		UserInfo x = getSqlSession().selectOne("mypageMap.updateAllInfo", useri);
		return x;
	}*/
	
}
