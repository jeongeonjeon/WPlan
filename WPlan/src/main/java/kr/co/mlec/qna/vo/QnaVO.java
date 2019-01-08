package kr.co.mlec.qna.vo;

public class QnaVO {
	
	private int no;
	private String id;
	private String content;
	private String regDate;
	private int pNo;
	private int qNo;

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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public int getqNo() {
		return qNo;
	}

	public void setqNo(int qNo) {
		this.qNo = qNo;
	}

	public QnaVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public QnaVO(int no, String id, String content, String regDate, int pNo, int qNo) {
		super();
		this.no = no;
		this.id = id;
		this.content = content;
		this.regDate = regDate;
		this.pNo = pNo;
		this.qNo = qNo;
	}

	@Override
	public String toString() {
		return "QnaVO [no=" + no + ", id=" + id + ", content=" + content + ", regDate=" + regDate + ", pNo=" + pNo
				+ ", qNo=" + qNo + "]";
	}
	
	
	
	

}
