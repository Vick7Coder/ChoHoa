package auctionplus.service.Impl;

import java.util.List;

import auctionplus.dao.DeliveryDao;
import auctionplus.dao.Impl.DeliveryDaoImpl;
import auctionplus.model.DeliveryModel;
import auctionplus.service.DeliveryService;

public class DeliveryServiceImpl implements DeliveryService {
	DeliveryDao deliveryDao = new DeliveryDaoImpl();

	@Override
	public DeliveryModel get(int id) {
		return deliveryDao.get(id);
	}

	@Override
	public List<DeliveryModel> getAll() {
		return deliveryDao.getAll();
	}

}
