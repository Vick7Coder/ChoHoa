package auctionplus.service;

import java.util.List;

import auctionplus.model.OrderModel;

public interface OrderService {
	List<OrderModel> getAll(int uid);
}
