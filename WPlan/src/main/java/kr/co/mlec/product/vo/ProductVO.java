package kr.co.mlec.product.vo;

public class ProductVO {

	private int p_no;  
    private String p_name;
    private String c_name;
    private String c_info;
    private String category;
    private String reg_date;
    private String p_price;
    private String p_event;

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getC_info() {
		return c_info;
	}

	public void setC_info(String c_info) {
		this.c_info = c_info;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public String getP_price() {
		return p_price;
	}

	public void setP_price(String p_price) {
		this.p_price = p_price;
	}

	public String getP_event() {
		return p_event;
	}

	public void setP_event(String p_event) {
		this.p_event = p_event;
	}

	@Override
	public String toString() {
		return "ProductVO [p_no=" + p_no + ", p_name=" + p_name + ", c_name=" + c_name + ", c_info=" + c_info
				+ ", category=" + category + ", reg_date=" + reg_date + ", p_price=" + p_price + ", p_event=" + p_event
				+ "]";
	}
    
    
}
