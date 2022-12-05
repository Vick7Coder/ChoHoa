package auctionplus.model;

import java.sql.Date;

public class AucSSModel {
	private int ssId;
	private UserModel user;
	private ProductModel prod;
	private double rePrice;
	private double cloPrice;
	private double priceStep;
	private Date creaDate;
	private Date startDay;
	private Date endDay;
	private boolean isComplete;

	public AucSSModel() {

	}

	public AucSSModel(int ssId, UserModel user, ProductModel prod, double rePrice, double cloPrice, double priceStep,
			Date creaDate, Date startDay, Date endDay, boolean isComplete) {

		this.ssId = ssId;
		this.user = user;
		this.prod = prod;
		this.rePrice = rePrice;
		this.cloPrice = cloPrice;
		this.priceStep = priceStep;
		this.creaDate = creaDate;
		this.startDay = startDay;
		this.endDay = endDay;
		this.isComplete = isComplete;
	}

	public int getSsId() {
		return ssId;
	}

	public void setSsId(int ssId) {
		this.ssId = ssId;
	}

	public UserModel getUser() {
		return user;
	}

	public void setUser(UserModel user) {
		this.user = user;
	}

	public ProductModel getProd() {
		return prod;
	}

	public void setProd(ProductModel prod) {
		this.prod = prod;
	}

	public double getRePrice() {
		return rePrice;
	}

	public void setRePrice(double rePrice) {
		this.rePrice = rePrice;
	}

	public double getCloPrice() {
		return cloPrice;
	}

	public void setCloPrice(double cloPrice) {
		this.cloPrice = cloPrice;
	}

	public double getPriceStep() {
		return priceStep;
	}

	public void setPriceStep(double priceStep) {
		this.priceStep = priceStep;
	}

	public Date getCreaDate() {
		return creaDate;
	}

	public void setCreaDate(Date creaDate) {
		this.creaDate = creaDate;
	}

	public Date getStartDay() {
		return startDay;
	}

	public void setStartDay(Date startDay) {
		this.startDay = startDay;
	}

	public Date getEndDay() {
		return endDay;
	}

	public void setEndDay(Date endDay) {
		this.endDay = endDay;
	}

	public boolean isComplete() {
		return isComplete;
	}

	public void setComplete(boolean isComplete) {
		this.isComplete = isComplete;
	}

	@Override
	public String toString() {
		return "AucSSModel [ssId=" + ssId + ", user=" + user.getfName() + ", prod=" + prod.getpName() + ", rePrice=" + rePrice + ", cloPrice="
				+ cloPrice + ", priceStep=" + priceStep + ", creaDate=" + creaDate + ", startDay=" + startDay
				+ ", endDay=" + endDay + ", isComplete=" + isComplete + "]";
	}

}
