package spring.command;


public class UserInfo {

	private String id;
	private String pwd;
	private String name;
	private String nick;
	private String email1;
	private String email2;
	private String tel;
	private String tel1;
	private String tel2;
	private String tel3;
	private String zipcode;
	private String address;
	private String email;
	private String emailTypes;
	private String checkid;
	private String checknick;
	private String checkemail;
	
	public UserInfo(){}
	
	public UserInfo(String id,String pwd, String name, String nick,String email1,String email2,String tel,String zipcode,String address,String tel1,String tel2,String tel3){
		
		this.id=id;
		this.pwd=pwd;
		this.name=name;
		this.nick=nick;
		this.email1=email1;
		this.email2=email2;
		this.tel=tel;
		this.tel=tel1;
		this.tel=tel2;
		this.tel=tel3;
		this.zipcode=zipcode;
		this.address=address;
		
		
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail1() {
		return email1;
	}

	public void setEmail1(String email1) {
		this.email1 = email1;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getEmailTypes() {
		return emailTypes;
	}

	public void setEmailTypes(String emailTypes) {
		this.emailTypes = emailTypes;
	}

	public String getCheckid() {
		return checkid;
	}

	public void setCheckid(String checkid) {
		this.checkid = checkid;
	}

	public String getChecknick() {
		return checknick;
	}

	public void setChecknick(String checknick) {
		this.checknick = checknick;
	}

	public String getCheckemail() {
		return checkemail;
	}

	public void setCheckemail(String checkemail) {
		this.checkemail = checkemail;
	}

	public String getTel1() {
		return tel1;
	}

	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}

	public String getTel2() {
		return tel2;
	}

	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}

	public String getTel3() {
		return tel3;
	}

	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}

	
	
}
