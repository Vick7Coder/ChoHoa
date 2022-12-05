package auctionplus.model;

public class SupplierModel {
	private int supId;
	private int oId;
	private String supName;

	public SupplierModel() {

	}

	public SupplierModel(int supId, int oId, String supName) {

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

	public int getoId() {
		return oId;
	}

	public void setoId(int oId) {
		this.oId = oId;
	}

	public String getSupName() {
		return supName;
	}

	public void setSupName(String supName) {
		this.supName = supName;
	}

}
