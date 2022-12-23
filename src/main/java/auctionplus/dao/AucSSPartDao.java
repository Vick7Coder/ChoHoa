package auctionplus.dao;

import java.util.List;
import auctionplus.model.AucSSPartModel;

public interface AucSSPartDao {
	List<AucSSPartModel> getAll(int ssID);

	AucSSPartModel getLastest(int ssID);
	void insertStan(int ss, int sup, Double p);
	int count(int ssid);

	void insert(AucSSPartModel part);
}
