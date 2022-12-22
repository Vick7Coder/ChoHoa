package auctionplus.service.Impl;

import java.util.List;

import auctionplus.dao.SupDao;
import auctionplus.dao.Impl.SupDaoImpl;
import auctionplus.model.SupplierModel;
import auctionplus.service.SupService;

public class SupServiceImpl implements SupService {
	SupDao supDao = new SupDaoImpl();

	@Override
	public List<SupplierModel> getAll() {
		return supDao.getAll();
	}

	@Override
	public SupplierModel get(int supId) {
		return supDao.get(supId);
	}

	

}
