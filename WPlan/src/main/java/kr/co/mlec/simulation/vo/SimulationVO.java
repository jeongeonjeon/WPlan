package kr.co.mlec.simulation.vo;

public class SimulationVO {
	
	String id;
	String fSaveName;
	int fSize;
	int dressNo;
	int tuxedoNo;
	int locaNo;
	int decoNo;
	public SimulationVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SimulationVO(String id, String fSaveName, int fSize, int dressNo, int tuxedoNo, int locaNo, int decoNo) {
		super();
		this.id = id;
		this.fSaveName = fSaveName;
		this.fSize = fSize;
		this.dressNo = dressNo;
		this.tuxedoNo = tuxedoNo;
		this.locaNo = locaNo;
		this.decoNo = decoNo;
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
	public int getfSize() {
		return fSize;
	}
	public void setfSize(int fSize) {
		this.fSize = fSize;
	}
	public int getDressNo() {
		return dressNo;
	}
	public void setDressNo(int dressNo) {
		this.dressNo = dressNo;
	}
	public int getTuxedoNo() {
		return tuxedoNo;
	}
	public void setTuxedoNo(int tuxedoNo) {
		this.tuxedoNo = tuxedoNo;
	}
	public int getLocaNo() {
		return locaNo;
	}
	public void setLocaNo(int locaNo) {
		this.locaNo = locaNo;
	}
	public int getDecoNo() {
		return decoNo;
	}
	public void setDecoNo(int decoNo) {
		this.decoNo = decoNo;
	}
	@Override
	public String toString() {
		return "SimulationVO [id=" + id + ", fSaveName=" + fSaveName + ", fSize=" + fSize + ", dressNo=" + dressNo
				+ ", tuxedoNo=" + tuxedoNo + ", locaNo=" + locaNo + ", decoNo=" + decoNo + "]";
	}
	

}
