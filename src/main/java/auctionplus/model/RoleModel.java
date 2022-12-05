package auctionplus.model;

public class RoleModel {
	private int rId;
	private String rName;

	public RoleModel() {

	}

	public RoleModel(int rId, String rName) {

		this.rId = rId;
		this.rName = rName;
	}

	public int getrId() {
		return rId;
	}

	public void setrId(int rId) {
		this.rId = rId;
	}

	public String getrName() {
		return rName;
	}

	public void setrName(String rName) {
		this.rName = rName;
	}

}
