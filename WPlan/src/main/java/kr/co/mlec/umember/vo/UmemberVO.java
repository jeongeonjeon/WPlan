package kr.co.mlec.umember.vo;

public class UmemberVO {
	private String id;
	private String password;
	private String password_sec;
	private String name;
	private String tel;
	private String email;
	private String type;
	private String regDate;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPassword_sec() {
		return password_sec;
	}
	public void setPassword_sec(String password_sec) {
		this.password_sec = password_sec;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public UmemberVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UmemberVO(String id, String password, String password_sec, String name, String tel, String email,
			String type, String regDate) {
		super();
		this.id = id;
		this.password = password;
		this.password_sec = password_sec;
		this.name = name;
		this.tel = tel;
		this.email = email;
		this.type = type;
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "UmemberVO [id=" + id + ", password=" + password + ", password_sec=" + password_sec + ", name=" + name
				+ ", tel=" + tel + ", email=" + email + ", type=" + type + ", regDate=" + regDate + "]";
	}
	
	
	

	
	
}
