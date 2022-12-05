package auctionplus.model;

public class ProductModel {
	private int pId;
	private String pName;
	private String pImage;
	private String detail;
	private int cId;

	public ProductModel() {

	}

	public ProductModel(int pId, String pName, String pImage, String detail, int cId) {

		this.pId = pId;
		this.pName = pName;
		this.pImage = pImage;
		this.detail = detail;
		this.cId = cId;
	}

	public int getpId() {
		return pId;
	}

	public void setpId(int pId) {
		this.pId = pId;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpImage() {
		return pImage;
	}

	public void setpImage(String pImage) {
		this.pImage = pImage;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public int getcId() {
		return cId;
	}

	public void setcId(int cId) {
		this.cId = cId;
	}

}
