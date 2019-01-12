package kr.co.mlec.product.vo;

public class ProductVO {

	private int pNo;  
    private String pName;
    private String cName;
    private String cInfo;
    private String category;
    private String regDate;
    private String pPrice;
    private String pEvent;
    private String dresstype;
    
	public ProductVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProductVO(int pNo, String pName, String cName, String cInfo, String category, String regDate, String pPrice,
			String pEvent, String dresstype) {
		super();
		this.pNo = pNo;
		this.pName = pName;
		this.cName = cName;
		this.cInfo = cInfo;
		this.category = category;
		this.regDate = regDate;
		this.pPrice = pPrice;
		this.pEvent = pEvent;
		this.dresstype = dresstype;
	}
	
	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getcInfo() {
		return cInfo;
	}

	public void setcInfo(String cInfo) {
		this.cInfo = cInfo;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getpPrice() {
		return pPrice;
	}

	public void setpPrice(String pPrice) {
		this.pPrice = pPrice;
	}

	public String getpEvent() {
		return pEvent;
	}

	public void setpEvent(String pEvent) {
		this.pEvent = pEvent;
	}

	public String getDresstype() {
		return dresstype;
	}

	public void setDresstype(String dresstype) {
		this.dresstype = dresstype;
	}

	@Override
	public String toString() {
		return "ProductVO [pNo=" + pNo + ", pName=" + pName + ", cName=" + cName + ", cInfo=" + cInfo + ", category="
				+ category + ", regDate=" + regDate + ", pPrice=" + pPrice + ", pEvent=" + pEvent + ", dresstype="
				+ dresstype + "]";
	}
	

    
    
    
}
