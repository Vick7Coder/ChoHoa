package auctionplus.dao;

import java.util.List;

import auctionplus.model.CategoryModel;

public interface CategoryDao {
	List<CategoryModel> getALLCategory();
	CategoryModel insert(CategoryModel category);
	void edit(CategoryModel category);
	void delete(int id);
	CategoryModel get(int id);
}
