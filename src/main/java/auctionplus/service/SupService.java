package auctionplus.service;

import java.util.List;

import auctionplus.model.SupplierModel;

public interface SupService {
	List<SupplierModel> getAll();

	SupplierModel get(int supId);
	
	SupplierModel getByUid(int uId);
}
