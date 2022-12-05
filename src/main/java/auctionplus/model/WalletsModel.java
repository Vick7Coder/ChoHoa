package auctionplus.model;

public class WalletsModel {
	private int wId;
	private int uId;
	private double balance;

	public WalletsModel() {

	}

	public WalletsModel(int wId, int uId, double balance) {
		this.wId = wId;
		this.uId = uId;
		this.balance = balance;
	}

	public int getwId() {
		return wId;
	}

	public void setwId(int wId) {
		this.wId = wId;
	}

	public int getuId() {
		return uId;
	}

	public void setuId(int uId) {
		this.uId = uId;
	}

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}

}
