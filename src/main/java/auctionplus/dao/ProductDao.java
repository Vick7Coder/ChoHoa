package auctionplus.dao;

import java.util.List;

import auctionplus.model.ProductModel;

public interface ProductDao {
	int countAll();

	int counCid(int cId);

	List<ProductModel> getAllProduct();

	List<ProductModel> getAllProductByCID(String cid);

	List<ProductModel> searchByProductName(String txtSearch);

	List<ProductModel> pagingProduct(int index);

	List<ProductModel> pagingProductByCID(String cid, int index);

	void insert(ProductModel product);

	void edit(ProductModel product);

	void delete(int id);

	List<ProductModel> getAll();

	ProductModel get(int id);
}
