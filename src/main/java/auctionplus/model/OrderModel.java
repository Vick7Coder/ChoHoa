package auctionplus.model;

import java.sql.Date;

public class OrderModel {
	private int ordId;
	private int ssId;
	private double total;
	private Date creaDate;
	private int dId;
	private boolean isComplete;

	public OrderModel() {

	}

	public OrderModel(int ordId, int ssId, double total, Date creaDate, int dId, boolean isComplete) {

		this.ordId = ordId;
		this.ssId = ssId;
		this.total = total;
		this.creaDate = creaDate;
		this.dId = dId;
		this.isComplete = isComplete;
	}

	public int getOrdId() {
		return ordId;
	}

	public void setOrdId(int ordId) {
		this.ordId = ordId;
	}

	public int getSsId() {
		return ssId;
	}

	public void setSsId(int ssId) {
		this.ssId = ssId;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public Date getCreaDate() {
		return creaDate;
	}

	public void setCreaDate(Date creaDate) {
		this.creaDate = creaDate;
	}

	public int getdId() {
		return dId;
	}

	public void setdId(int dId) {
		this.dId = dId;
	}

	public boolean isComplete() {
		return isComplete;
	}

	public void setComplete(boolean isComplete) {
		this.isComplete = isComplete;
	}

}
