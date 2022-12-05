package auctionplus.service;

import java.util.List;

import auctionplus.model.CategoryModel;

public interface CategoryService {
	List<CategoryModel> getALLCategory();
	CategoryModel insert(CategoryModel category);
	CategoryModel edit(CategoryModel category);
	void delete(int id);
	CategoryModel get(int id);
}
