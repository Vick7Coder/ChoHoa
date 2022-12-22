package auctionplus.model;

public class SupplierModel {
	private int supId;
	private UserModel oId;
	private String supName;

	public SupplierModel() {

	}

	public SupplierModel(int supId, UserModel oId, String supName) {

		this.supId = supId;
		this.oId = oId;
		this.supName = supName;
	}

	public int getSupId() {
		return supId;
	}

	public void setSupId(int supId) {
		this.supId = supId;
	}

	public UserModel getoId() {
		return oId;
	}

	public void setoId(UserModel oId) {
		this.oId = oId;
	}

	public String getSupName() {
		return supName;
	}

	public void setSupName(String supName) {
		this.supName = supName;
	}

	@Override
	public String toString() {
		return "SupplierModel [supId=" + supId + ", oId=" + oId + ", supName=" + supName + "]";
	}
	
	

}
