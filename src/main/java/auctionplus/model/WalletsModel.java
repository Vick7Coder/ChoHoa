package auctionplus.model;

public class WalletsModel {
	private int wId;
	private UserModel uId;
	private double balance;

	public WalletsModel() {

	}

	public WalletsModel(int wId, UserModel uId, double balance) {
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

	

	public UserModel getuId() {
		return uId;
	}

	public void setuId(UserModel uId) {
		this.uId = uId;
	}

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}

}
