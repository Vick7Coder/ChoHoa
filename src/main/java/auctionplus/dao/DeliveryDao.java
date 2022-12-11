package auctionplus.dao;

import java.util.List;

import auctionplus.model.DeliveryModel;

public interface DeliveryDao {
	DeliveryModel get(int id);
	List<DeliveryModel> getAll();
}
