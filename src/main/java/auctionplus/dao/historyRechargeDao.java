package auctionplus.dao;

import java.util.List;

import auctionplus.model.RechargeHistoriesModel;

public interface historyRechargeDao {
	void insert(RechargeHistoriesModel r);

	List<RechargeHistoriesModel> getAllbyWid(int wid);

	List<RechargeHistoriesModel> getAll();

}
