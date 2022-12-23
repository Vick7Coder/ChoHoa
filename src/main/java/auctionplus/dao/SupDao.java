package auctionplus.dao;

import java.util.List;

import auctionplus.model.SupplierModel;

public interface SupDao {
	List<SupplierModel> getAll();

	SupplierModel get(int supId);
	
	SupplierModel getByUid(int uId);
}
