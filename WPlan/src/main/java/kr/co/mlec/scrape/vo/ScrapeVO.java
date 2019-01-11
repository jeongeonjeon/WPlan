package kr.co.mlec.scrape.vo;

public class ScrapeVO {
	private String id;
	private int pNo;

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
		return "ScrapeVO [id=" + id + ", pNo=" + pNo + "]";
	}
	
	
}
