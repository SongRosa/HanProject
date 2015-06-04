package spring.command;

import java.util.Date;

public class BoardListCommand {

	private int b_number;
	private String b_subject;
	private String b_writer;
	private Date b_regdate;
	private int c_count;
	private int b_count;
	private String p_name;
	
	public BoardListCommand(){}
	
	
	
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getB_count() {
		return b_count;
	}
	public void setB_count(int b_count) {
		this.b_count = b_count;
	}
	public int getC_count() {
		return c_count;
	}
	public void setC_count(int c_count) {
		this.c_count = c_count;
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
	
	
	
}
