package kr.co.mlec.product.vo;

public class ProductVO {

	private int p_no;  
    private String p_name;
    private String c_name;
    private String c_info;
    private String category;
    private String reg_date;

	public ProductVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProductVO(int p_no, String p_name, String c_name, String c_info, String category, String reg_date) {
		super();
		this.p_no = p_no;
		this.p_name = p_name;
		this.c_name = c_name;
		this.c_info = c_info;
		this.category = category;
		this.reg_date = reg_date;
	}
	
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
	
    @Override
	public String toString() {
		return "ProductVO [p_no=" + p_no + ", p_name=" + p_name + ", c_name=" + c_name + ", c_info=" + c_info
				+ ", category=" + category + ", reg_date=" + reg_date + "]";
	}
}
