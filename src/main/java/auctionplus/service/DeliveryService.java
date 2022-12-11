package auctionplus.service;

import java.util.List;

import auctionplus.model.DeliveryModel;

public interface DeliveryService {
	DeliveryModel get(int id);

	List<DeliveryModel> getAll();
}
