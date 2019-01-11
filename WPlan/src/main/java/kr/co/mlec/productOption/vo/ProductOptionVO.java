package kr.co.mlec.productOption.vo;

public class ProductOptionVO {
	
	private int no;
	private int pNo;
	private String pOptionName;
	private String pOptionValue;

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

	public String getpOptionName() {
		return pOptionName;
	}

	public void setpOptionName(String pOptionName) {
		this.pOptionName = pOptionName;
	}

	public String getpOptionValue() {
		return pOptionValue;
	}

	public void setpOptionValue(String pOptionValue) {
		this.pOptionValue = pOptionValue;
	}

	@Override
	public String toString() {
		return "ProductOptionVO [no=" + no + ", pNo=" + pNo + ", pOptionName=" + pOptionName + ", pOptionValue="
				+ pOptionValue + "]";
	}
	

}
