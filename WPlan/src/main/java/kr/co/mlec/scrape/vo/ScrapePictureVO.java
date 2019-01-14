package kr.co.mlec.scrape.vo;

public class ScrapePictureVO {
	int no;
	int pNo;
	String id;
	String fSaveName;
	String main;
	String pName;
	String category;
	public ScrapePictureVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ScrapePictureVO(int no, int pNo, String id, String fSaveName, String main, String pName, String category) {
		super();
		this.no = no;
		this.pNo = pNo;
		this.id = id;
		this.fSaveName = fSaveName;
		this.main = main;
		this.pName = pName;
		this.category = category;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getfSaveName() {
		return fSaveName;
	}
	public void setfSaveName(String fSaveName) {
		this.fSaveName = fSaveName;
	}
	public String getMain() {
		return main;
	}
	public void setMain(String main) {
		this.main = main;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	@Override
	public String toString() {
		return "ScrapePictureVO [no=" + no + ", pNo=" + pNo + ", id=" + id + ", fSaveName=" + fSaveName + ", main="
				+ main + ", pName=" + pName + ", category=" + category + "]";
	}
	
	

}
