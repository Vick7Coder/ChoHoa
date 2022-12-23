package auctionplus.service;

import java.util.List;

import auctionplus.model.WalletsModel;

public interface WalletService {
	List<WalletsModel> getAll();

	WalletsModel getByUid(int uid);

	void insert(WalletsModel w);

	void edit(WalletsModel w);

	WalletsModel get(int wid);
}
