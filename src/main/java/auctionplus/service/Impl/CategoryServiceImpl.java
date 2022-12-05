package auctionplus.service.Impl;

import java.util.List;

import auctionplus.dao.CategoryDao;
import auctionplus.dao.Impl.CategoryDaoImpl;
import auctionplus.model.CategoryModel;
import auctionplus.service.CategoryService;

public class CategoryServiceImpl implements CategoryService {
	CategoryDao categoryDao = new CategoryDaoImpl(); 
	@Override
	public List<CategoryModel> getALLCategory() {
		return categoryDao.getALLCategory();
	}

	@Override
	public CategoryModel insert(CategoryModel category) {
		return categoryDao.insert(category);
	}

	@Override
	public CategoryModel edit(CategoryModel category) {
		CategoryModel oldCategory = categoryDao.get(category.getcId());
		oldCategory.setcName(category.getcName());
		categoryDao.edit(oldCategory);
		return null;
	}

	@Override
	public void delete(int id) {
		categoryDao.delete(id);
		
	}

	@Override
	public CategoryModel get(int id) {
		return categoryDao.get(id);
	}

}
