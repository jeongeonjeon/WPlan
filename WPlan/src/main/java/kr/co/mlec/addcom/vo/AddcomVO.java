package kr.co.mlec.addcom.vo;

public class AddcomVO {

	private int no;
	private String id;
	private boolean noise;
	private boolean parking;
	private boolean cloth;
	private boolean photo;
	private boolean prov;
	private boolean meeting;
	private boolean meal;
	private boolean sound;
	private boolean drink;
	private boolean smoking;
	private boolean hotel;
	private boolean valet;
	private boolean parking_guide;
	private boolean bus;
	private boolean wifi;
	private boolean chair_table;
	private boolean history;
	private String sale;
	private String pitting_time;
	private String pitting_num;
	private String props;
	private String type;
	private String use_time;
	private String recital;
	private String addr;
	private String addr_post;
	private String addr_detail;
	private String addr_extra;
	private String regDate;
	
	public AddcomVO() {
		super();
		// TODO Auto-generated constructor stub
	}

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

	public boolean isNoise() {
		return noise;
	}

	public void setNoise(boolean noise) {
		this.noise = noise;
	}

	public boolean isParking() {
		return parking;
	}

	public void setParking(boolean parking) {
		this.parking = parking;
	}

	public boolean isCloth() {
		return cloth;
	}

	public void setCloth(boolean cloth) {
		this.cloth = cloth;
	}

	public boolean isPhoto() {
		return photo;
	}

	public void setPhoto(boolean photo) {
		this.photo = photo;
	}

	public boolean isProv() {
		return prov;
	}

	public void setProv(boolean prov) {
		this.prov = prov;
	}

	public boolean isMeeting() {
		return meeting;
	}

	public void setMeeting(boolean meeting) {
		this.meeting = meeting;
	}

	public boolean isMeal() {
		return meal;
	}

	public void setMeal(boolean meal) {
		this.meal = meal;
	}

	public boolean isSound() {
		return sound;
	}

	public void setSound(boolean sound) {
		this.sound = sound;
	}

	public boolean isDrink() {
		return drink;
	}

	public void setDrink(boolean drink) {
		this.drink = drink;
	}

	public boolean isSmoking() {
		return smoking;
	}

	public void setSmoking(boolean smoking) {
		this.smoking = smoking;
	}

	public boolean isHotel() {
		return hotel;
	}

	public void setHotel(boolean hotel) {
		this.hotel = hotel;
	}

	public boolean isValet() {
		return valet;
	}

	public void setValet(boolean valet) {
		this.valet = valet;
	}

	public boolean isParking_guide() {
		return parking_guide;
	}

	public void setParking_guide(boolean parking_guide) {
		this.parking_guide = parking_guide;
	}

	public boolean isBus() {
		return bus;
	}

	public void setBus(boolean bus) {
		this.bus = bus;
	}

	public boolean isWifi() {
		return wifi;
	}

	public void setWifi(boolean wifi) {
		this.wifi = wifi;
	}

	public boolean isChair_table() {
		return chair_table;
	}

	public void setChair_table(boolean chair_table) {
		this.chair_table = chair_table;
	}

	public boolean isHistory() {
		return history;
	}

	public void setHistory(boolean history) {
		this.history = history;
	}

	public String getSale() {
		return sale;
	}

	public void setSale(String sale) {
		this.sale = sale;
	}

	public String getPitting_time() {
		return pitting_time;
	}

	public void setPitting_time(String pitting_time) {
		this.pitting_time = pitting_time;
	}

	public String getPitting_num() {
		return pitting_num;
	}

	public void setPitting_num(String pitting_num) {
		this.pitting_num = pitting_num;
	}

	public String getProps() {
		return props;
	}

	public void setProps(String props) {
		this.props = props;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getUse_time() {
		return use_time;
	}

	public void setUse_time(String use_time) {
		this.use_time = use_time;
	}

	public String getRecital() {
		return recital;
	}

	public void setRecital(String recital) {
		this.recital = recital;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getAddr_post() {
		return addr_post;
	}

	public void setAddr_post(String addr_post) {
		this.addr_post = addr_post;
	}

	public String getAddr_detail() {
		return addr_detail;
	}

	public void setAddr_detail(String addr_detail) {
		this.addr_detail = addr_detail;
	}

	public String getAddr_extra() {
		return addr_extra;
	}

	public void setAddr_extra(String addr_extra) {
		this.addr_extra = addr_extra;
	}

	public String getregDate() {
		return regDate;
	}

	public void setregDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "AddcomVO [no=" + no + ", id=" + id + ", noise=" + noise + ", parking=" + parking + ", cloth=" + cloth
				+ ", photo=" + photo + ", prov=" + prov + ", meeting=" + meeting + ", meal=" + meal + ", sound=" + sound
				+ ", drink=" + drink + ", smoking=" + smoking + ", hotel=" + hotel + ", valet=" + valet
				+ ", parking_guide=" + parking_guide + ", bus=" + bus + ", wifi=" + wifi + ", chair_table="
				+ chair_table + ", history=" + history + ", sale=" + sale + ", pitting_time=" + pitting_time
				+ ", pitting_num=" + pitting_num + ", props=" + props + ", type=" + type + ", use_time=" + use_time
				+ ", recital=" + recital + ", addr=" + addr + ", addr_post=" + addr_post + ", addr_detail="
				+ addr_detail + ", addr_extra=" + addr_extra + ", regDate=" + regDate + "]";
	}

	public AddcomVO(int no, String id, boolean noise, boolean parking, boolean cloth, boolean photo, boolean prov,
			boolean meeting, boolean meal, boolean sound, boolean drink, boolean smoking, boolean hotel, boolean valet,
			boolean parking_guide, boolean bus, boolean wifi, boolean chair_table, boolean history, String sale,
			String pitting_time, String pitting_num, String props, String type, String use_time, String recital,
			String addr, String addr_post, String addr_detail, String addr_extra, String regDate) {
		super();
		this.no = no;
		this.id = id;
		this.noise = noise;
		this.parking = parking;
		this.cloth = cloth;
		this.photo = photo;
		this.prov = prov;
		this.meeting = meeting;
		this.meal = meal;
		this.sound = sound;
		this.drink = drink;
		this.smoking = smoking;
		this.hotel = hotel;
		this.valet = valet;
		this.parking_guide = parking_guide;
		this.bus = bus;
		this.wifi = wifi;
		this.chair_table = chair_table;
		this.history = history;
		this.sale = sale;
		this.pitting_time = pitting_time;
		this.pitting_num = pitting_num;
		this.props = props;
		this.type = type;
		this.use_time = use_time;
		this.recital = recital;
		this.addr = addr;
		this.addr_post = addr_post;
		this.addr_detail = addr_detail;
		this.addr_extra = addr_extra;
		this.regDate = regDate;
	}

	
	
}
