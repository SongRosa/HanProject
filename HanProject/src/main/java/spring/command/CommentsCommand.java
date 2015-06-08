package spring.command;

import java.util.Date;

public class CommentsCommand {

	private int c_number;
	private int b_number;
	private String c_writer;
	private Date c_regdate;
	private String c_content;

	public CommentsCommand() {
	}

	public CommentsCommand(String c_writer, String c_content, int b_number) {
		this.c_writer = c_writer;
		this.c_content = c_content;
		this.b_number = b_number;
	}

	public CommentsCommand(int c_number, int b_number) {
		this.c_number = c_number;
		this.b_number = b_number;
	}

	public int getC_number() {
		return c_number;
	}

	public void setC_number(int c_number) {
		this.c_number = c_number;
	}

	public int getB_number() {
		return b_number;
	}

	public void setB_number(int b_number) {
		this.b_number = b_number;
	}

	public String getC_writer() {
		return c_writer;
	}

	public void setC_writer(String c_writer) {
		this.c_writer = c_writer;
	}

	public Date getC_regdate() {
		return c_regdate;
	}

	public void setC_regdate(Date c_regdate) {
		this.c_regdate = c_regdate;
	}

	public String getC_content() {
		return c_content;
	}

	public void setC_content(String c_content) {
		this.c_content = c_content;
	}

	@Override
	public String toString() {
		String str = "c_writer :: " + c_writer + "\n c_content :: " + c_content
				+ "\n c_regdate :: " + c_regdate;
		return str;
	}

}
