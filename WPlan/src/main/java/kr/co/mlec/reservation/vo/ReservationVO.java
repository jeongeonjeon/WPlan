package kr.co.mlec.reservation.vo;

public class ReservationVO {
	
	private int no;
	private String id;
	private String regDate;
	private String wDate;
	private String reserved;
	private String rProduct;

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

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getwDate() {
		return wDate;
	}

	public void setwDate(String wDate) {
		this.wDate = wDate;
	}

	public String getReserved() {
		return reserved;
	}

	public void setReserved(String reserved) {
		this.reserved = reserved;
	}

	public String getrProduct() {
		return rProduct;
	}

	public void setrProduct(String rProduct) {
		this.rProduct = rProduct;
	}
	
	

}
