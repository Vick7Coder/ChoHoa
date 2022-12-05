package auctionplus.model;

public class AucSSPartModel {
	private int ssId;
	private int supId;
	private double aucSSPrice;
	private boolean aucWin;

	public AucSSPartModel() {

	}

	public AucSSPartModel(int ssId, int supId, double aucSSPrice, boolean aucWin) {

		this.ssId = ssId;
		this.supId = supId;
		this.aucSSPrice = aucSSPrice;
		this.aucWin = aucWin;
	}

	public int getSsId() {
		return ssId;
	}

	public void setSsId(int ssId) {
		this.ssId = ssId;
	}

	public int getSupId() {
		return supId;
	}

	public void setSupId(int supId) {
		this.supId = supId;
	}

	public double getAucSSPrice() {
		return aucSSPrice;
	}

	public void setAucSSPrice(double aucSSPrice) {
		this.aucSSPrice = aucSSPrice;
	}

	public boolean isAucWin() {
		return aucWin;
	}

	public void setAucWin(boolean aucWin) {
		this.aucWin = aucWin;
	}

}
