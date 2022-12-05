package auctionplus.model;

import java.sql.Date;

public class RechargeHistoriesModel {
	private int hisId;
	private int wId;
	private double value;
	private Date cDate;

	public RechargeHistoriesModel() {

	}

	public RechargeHistoriesModel(int hisId, int wId, double value, Date cDate) {

		this.hisId = hisId;
		this.wId = wId;
		this.value = value;
		this.cDate = cDate;
	}

	public int getHisId() {
		return hisId;
	}

	public void setHisId(int hisId) {
		this.hisId = hisId;
	}

	public int getwId() {
		return wId;
	}

	public void setwId(int wId) {
		this.wId = wId;
	}

	public double getValue() {
		return value;
	}

	public void setValue(double value) {
		this.value = value;
	}

	public Date getcDate() {
		return cDate;
	}

	public void setcDate(Date cDate) {
		this.cDate = cDate;
	}

}
