package spring.command;

public class BoardGroupingCommand {
	
	private String keyword;
	private String grouping;
	
	public BoardGroupingCommand(){}
	public BoardGroupingCommand(String k, String g){
		
		this.keyword=k;
		this.grouping=g;
		
	}
	
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getGrouping() {
		return grouping;
	}
	public void setGrouping(String grouping) {
		this.grouping = grouping;
	}
	
	
	
	
	

}
