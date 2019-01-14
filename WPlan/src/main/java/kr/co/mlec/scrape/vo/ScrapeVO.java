package kr.co.mlec.scrape.vo;

public class ScrapeVO {
	private int no;
	private String id;
	private int pNo;
	
	public ScrapeVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ScrapeVO(int no, String id, int pNo) {
		super();
		this.no = no;
		this.id = id;
		this.pNo = pNo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	@Override
	public String toString() {
		return "ScrapeVO [no=" + no + ", id=" + id + ", pNo=" + pNo + "]";
	}
	
	
}
