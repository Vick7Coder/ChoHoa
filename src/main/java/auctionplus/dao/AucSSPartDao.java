package auctionplus.dao;

import java.util.List;
import auctionplus.model.AucSSPartModel;

public interface AucSSPartDao {
	List<AucSSPartModel> getAll(int ssID);

	void insert(AucSSPartModel part);
}
