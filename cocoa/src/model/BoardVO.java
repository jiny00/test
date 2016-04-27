package model;

public class BoardVO {
	private int postNo;
	private String title;
	private String content;
	private String timePosted;
	private String id;
	public BoardVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardVO(int postNo, String title, String content, String timePosted,
			String id) {
		super();
		this.postNo = postNo;
		this.title = title;
		this.content = content;
		this.timePosted = timePosted;
		this.id = id;
	}
	public int getPostNo() {
		return postNo;
	}
	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTimePosted() {
		return timePosted;
	}
	public void setTimePosted(String timePosted) {
		this.timePosted = timePosted;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "BoardVO [postNo=" + postNo + ", title=" + title + ", content="
				+ content + ", timePosted=" + timePosted + ", id=" + id + "]";
	}
	
	
}
