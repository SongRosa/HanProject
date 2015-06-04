package spring.command;

import java.util.Date;

public class BoardCommand {

	private int b_number;
	private String b_subject;
	private String b_writer;
	private Date b_regdate;
	private String b_content;
	private int b_count;
	private int p_number;
	
	
	

	public BoardCommand(){}
	public BoardCommand(int p_number, String b_subject, String b_writer, String b_content){
		this.p_number=p_number;
		this.b_subject=b_subject;
		this.b_writer=b_writer;
		this.b_content=b_content;
	}
	
	public int getP_number() {
		return p_number;
	}
	public void setP_number(int p_number) {
		this.p_number = p_number;
	}

	public int getB_number() {
		return b_number;
	}

	public void setB_number(int b_number) {
		this.b_number = b_number;
	}

	public String getB_subject() {
		return b_subject;
	}

	public void setB_subject(String b_subject) {
		this.b_subject = b_subject;
	}

	public String getB_writer() {
		return b_writer;
	}

	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}

	public Date getB_regdate() {
		return b_regdate;
	}

	public void setB_regdate(Date b_regdate) {
		this.b_regdate = b_regdate;
	}

	public String getB_content() {
		return b_content;
	}

	public void setB_content(String b_content) {
		this.b_content = b_content;
	}

	public int getB_count() {
		return b_count;
	}

	public void setB_count(int b_count) {
		this.b_count = b_count;
	}

	@Override
	public String toString() {
		String str = "글번호 ::" + b_number + "\n 글제목 :: " + b_subject
				+ "\n 작성자 :: " + b_writer + "\n 작성일 ::" + b_regdate;
		return str;
	}

}
