package auctionplus.service.Impl;

import java.util.List;

import auctionplus.dao.AucSSPartDao;
import auctionplus.dao.Impl.AucSSPartDaoImpl;
import auctionplus.model.AucSSPartModel;
import auctionplus.service.AucSSPartService;

public class AucSSPartServiceImpl implements AucSSPartService {
	AucSSPartDao partDao = new AucSSPartDaoImpl();

	@Override
	public List<AucSSPartModel> getAll(int ssID) {
		return partDao.getAll(ssID);
	}

	@Override
	public void insert(AucSSPartModel part) {
		partDao.insert(part);

	}

	@Override
	public AucSSPartModel getLastest(int ssID) {
		return partDao.getLastest(ssID);
	}

	@Override
	public int count(int ssid) {
		return partDao.count(ssid);  
	}

}
