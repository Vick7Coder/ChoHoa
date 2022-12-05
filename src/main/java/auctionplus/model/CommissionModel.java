package auctionplus.model;

import java.sql.Date;

public class CommissionModel {
	private int ordId;
	private double profit;
	private Date comDate;

	public CommissionModel() {

	}

	public CommissionModel(int ordId, double profit, Date comDate) {

		this.ordId = ordId;
		this.profit = profit;
		this.comDate = comDate;
	}

	public int getOrdId() {
		return ordId;
	}

	public void setOrdId(int ordId) {
		this.ordId = ordId;
	}

	public double getProfit() {
		return profit;
	}

	public void setProfit(double profit) {
		this.profit = profit;
	}

	public Date getComDate() {
		return comDate;
	}

	public void setComDate(Date comDate) {
		this.comDate = comDate;
	}

}
