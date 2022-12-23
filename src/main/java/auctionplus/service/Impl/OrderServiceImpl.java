package auctionplus.service.Impl;

import java.util.List;

import auctionplus.dao.OrderDao;
import auctionplus.dao.Impl.OrderDaoImpl;
import auctionplus.model.OrderModel;
import auctionplus.service.OrderService;

public class OrderServiceImpl implements OrderService {
	OrderDao orderDao = new OrderDaoImpl();

	@Override
	public List<OrderModel> getAll(int uid) {
		
		return orderDao.getAll(uid);
	}
	
}
