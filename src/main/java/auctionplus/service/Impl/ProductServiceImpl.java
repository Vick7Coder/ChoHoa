package auctionplus.service.Impl;

import java.io.File;
import java.util.List;

import auctionplus.dao.ProductDao;
import auctionplus.dao.Impl.ProductDaoImpl;
import auctionplus.model.ProductModel;
import auctionplus.service.ProductService;

public class ProductServiceImpl implements ProductService {
	ProductDao productDao = new ProductDaoImpl();

	@Override
	public int countAll() {
		return productDao.countAll();
	}

	@Override
	public int counCid(int cId) {
		return productDao.counCid(cId);
	}

	@Override
	public List<ProductModel> getAllProduct() {
		return productDao.getAllProduct();
	}

	@Override
	public List<ProductModel> getAllProductByCID(String cid) {
		return productDao.getAllProductByCID(cid);
	}

	@Override
	public List<ProductModel> searchByProductName(String txtSearch) {
		return productDao.searchByProductName(txtSearch);
	}

	@Override
	public List<ProductModel> pagingProduct(int index) {
		return productDao.pagingProduct(index);
	}

	@Override
	public List<ProductModel> pagingProductByCID(String cid, int index) {
		return productDao.pagingProductByCID(cid, index);
	}

	@Override
	public void insert(ProductModel product) {
		productDao.insert(product);

	}

	@Override
	public void edit(ProductModel product) {
		ProductModel oldProduct = productDao.get(product.getpId());
		oldProduct.setpName(product.getpName());
		if (product.getpImage() != null) {
			// delete old image
			String fileName = oldProduct.getpImage();
			final String dir = "D:\\teaching\\HK1(2022_2023)\\EC\\AuctionProject\\ChoHoa\\src\\main\\webapp\\templates\\imgUpload";
			File file = new File(dir + "/product/" + fileName);
			if (file.exists()) {
				file.delete();
			}
			oldProduct.setpImage(product.getpImage());
		}
		oldProduct.setDetail(product.getDetail());
		oldProduct.setcId(product.getcId());
		productDao.edit(oldProduct);
	}

	@Override
	public void delete(int id) {
		productDao.delete(id);

	}

	@Override
	public List<ProductModel> getAll() {
		return productDao.getAll();
	}

	@Override
	public ProductModel get(int id) {
		return productDao.get(id);
	}





}
