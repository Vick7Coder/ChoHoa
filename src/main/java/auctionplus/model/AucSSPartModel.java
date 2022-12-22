package auctionplus.model;

public class AucSSPartModel {
	private AucSSModel ssId;
	private SupplierModel supId;
	private double aucSSPrice;
	private boolean aucWin;

	public AucSSPartModel() {

	}

	public AucSSPartModel(AucSSModel ssId, SupplierModel supId, double aucSSPrice, boolean aucWin) {

		this.ssId = ssId;
		this.supId = supId;
		this.aucSSPrice = aucSSPrice;
		this.aucWin = aucWin;
	}



	public AucSSModel getSsId() {
		return ssId;
	}

	public void setSsId(AucSSModel ssId) {
		this.ssId = ssId;
	}

	public SupplierModel getSupId() {
		return supId;
	}

	public void setSupId(SupplierModel supId) {
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

	@Override
	public String toString() {
		return "AucSSPartModel [ssId=" + ssId + ", supId=" + supId + ", aucSSPrice=" + aucSSPrice + ", aucWin=" + aucWin
				+ "]";
	}
	

}
