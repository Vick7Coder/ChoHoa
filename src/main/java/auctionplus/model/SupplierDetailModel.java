package auctionplus.model;

public class SupplierDetailModel {
	private int supId;
	private int pId;
	private Double dPrice;

	public SupplierDetailModel() {

	}

	public SupplierDetailModel(int supId, int pId, Double dPrice) {

		this.supId = supId;
		this.pId = pId;
		this.dPrice = dPrice;
	}

	public int getSupId() {
		return supId;
	}

	public void setSupId(int supId) {
		this.supId = supId;
	}

	public int getpId() {
		return pId;
	}

	public void setpId(int pId) {
		this.pId = pId;
	}

	public Double getdPrice() {
		return dPrice;
	}

	public void setdPrice(Double dPrice) {
		this.dPrice = dPrice;
	}

}
