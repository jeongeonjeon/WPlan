package kr.co.mlec.cmember.vo;

public class CmemberVO {
	private String id;
	private String name;
	private String password;
	private String passwordSec;
	private String tel;
	private String email;
	private String cName;
	private int cNO;
	private String cAddress;
	private String type;
	private String regDate;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPasswordSec() {
		return passwordSec;
	}
	public void setPasswordSec(String passwordSec) {
		this.passwordSec = passwordSec;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public int getcNO() {
		return cNO;
	}
	public void setcNO(int cNO) {
		this.cNO = cNO;
	}
	public String getcAddress() {
		return cAddress;
	}
	public void setcAddress(String cAddress) {
		this.cAddress = cAddress;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public CmemberVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CmemberVO(String id, String name, String password, String passwordSec, String tel, String email,
			String cName, int cNO, String cAddress, String type, String regDate) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.passwordSec = passwordSec;
		this.tel = tel;
		this.email = email;
		this.cName = cName;
		this.cNO = cNO;
		this.cAddress = cAddress;
		this.type = type;
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "CmemberVO [id=" + id + ", name=" + name + ", password=" + password + ", passwordSec=" + passwordSec
				+ ", tel=" + tel + ", email=" + email + ", cName=" + cName + ", cNO=" + cNO + ", cAddress=" + cAddress
				+ ", type=" + type + ", regDate=" + regDate + "]";
	}

	
	
	

}
