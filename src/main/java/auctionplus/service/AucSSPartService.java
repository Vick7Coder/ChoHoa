package auctionplus.service;

import java.util.List;

import auctionplus.model.AucSSPartModel;

public interface AucSSPartService {
	List<AucSSPartModel> getAll(int ssID);

	void insert(AucSSPartModel part);
}
