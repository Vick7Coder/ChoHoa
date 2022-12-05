package auctionplus.model;

public class UserModel {
	private int uId;
	private String lName;
	private String fName;
	private String email;
	private String CMND;
	private DeliveryModel address;
	private String pNum;
	private String uName;
	private String uPass;
	private RoleModel role;

	public UserModel() {

	}

	public UserModel(int uId, String lName, String fName, String email, String cMND, DeliveryModel address, String pNum,
			String uName, String uPass, RoleModel role) {

		this.uId = uId;
		this.lName = lName;
		this.fName = fName;
		this.email = email;
		CMND = cMND;
		this.address = address;
		this.pNum = pNum;
		this.uName = uName;
		this.uPass = uPass;
		this.role = role;
	}

	public int getuId() {
		return uId;
	}

	public void setuId(int uId) {
		this.uId = uId;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCMND() {
		return CMND;
	}

	public void setCMND(String cMND) {
		CMND = cMND;
	}

	public DeliveryModel getAddress() {
		return address;
	}

	public void setAddress(DeliveryModel address) {
		this.address = address;
	}

	public String getpNum() {
		return pNum;
	}

	public void setpNum(String pNum) {
		this.pNum = pNum;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getuPass() {
		return uPass;
	}

	public void setuPass(String uPass) {
		this.uPass = uPass;
	}

	public RoleModel getRole() {
		return role;
	}

	public void setRole(RoleModel role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "UserModel [uId=" + uId + ", lName=" + lName + ", fName=" + fName + ", email=" + email + ", CMND=" + CMND
				+ ", address=" + address.getdName() + ", pNum=" + pNum + ", uName=" + uName + ", uPass=" + uPass + ", role=" + role
				+ "]";
	}

}
