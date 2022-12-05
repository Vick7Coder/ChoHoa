package auctionplus.model;

public class CategoryModel {
	private int cId;
	private String cName;

	public CategoryModel() {

	}

	public CategoryModel(int cId, String cName) {

		this.cId = cId;
		this.cName = cName;
	}

	public int getcId() {
		return cId;
	}

	public void setcId(int cId) {
		this.cId = cId;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

}
