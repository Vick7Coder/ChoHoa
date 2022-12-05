package auctionplus.model;

public class MomoLinksModel {
	private int wId;
	private String momoAccNum;

	public MomoLinksModel() {

	}

	public MomoLinksModel(int wId, String momoAccNum) {

		this.wId = wId;
		this.momoAccNum = momoAccNum;
	}

	public int getwId() {
		return wId;
	}

	public void setwId(int wId) {
		this.wId = wId;
	}

	public String getMomoAccNum() {
		return momoAccNum;
	}

	public void setMomoAccNum(String momoAccNum) {
		this.momoAccNum = momoAccNum;
	}

}
