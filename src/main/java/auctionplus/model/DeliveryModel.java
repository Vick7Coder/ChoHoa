package auctionplus.model;

public class DeliveryModel {
	private int dId;
	private String dName;
	private double shipCharge;

	public DeliveryModel() {

	}

	public DeliveryModel(int dId, String dName, double shipCharge) {

		this.dId = dId;
		this.dName = dName;
		this.shipCharge = shipCharge;
	}

	public int getdId() {
		return dId;
	}

	public void setdId(int dId) {
		this.dId = dId;
	}

	public String getdName() {
		return dName;
	}

	public void setdName(String dName) {
		this.dName = dName;
	}

	public double getShipCharge() {
		return shipCharge;
	}

	public void setShipCharge(double shipCharge) {
		this.shipCharge = shipCharge;
	}

	@Override
	public String toString() {
		return "DeliveryModel [dId=" + dId + ", dName=" + dName + ", shipCharge=" + shipCharge + "]";
	}
	

}
