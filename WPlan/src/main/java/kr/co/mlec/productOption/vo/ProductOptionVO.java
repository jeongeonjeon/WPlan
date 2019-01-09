package kr.co.mlec.productOption.vo;

public class ProductOptionVO {
	
	private int no;
	private int p_no;
	private String pOptionName;
	private String pOptionValue;

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
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
		return "ProductOptionVO [no=" + no + ", p_no=" + p_no + ", pOptionName=" + pOptionName + ", pOptionValue="
				+ pOptionValue + "]";
	}
	
	
	
	

}
