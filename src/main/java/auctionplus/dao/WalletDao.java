package auctionplus.dao;

import java.util.List;

import auctionplus.model.WalletsModel;

public interface WalletDao {
	List<WalletsModel> getAll();

	WalletsModel get(int wid);

	WalletsModel getByUid(int uid);

	void insert(WalletsModel w);

	void edit(WalletsModel w);
}
