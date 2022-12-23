package auctionplus.dao;

import java.util.List;

import auctionplus.model.OrderModel;

public interface OrderDao {
	List<OrderModel> getAll(int uid);
}
