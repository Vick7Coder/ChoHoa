package auctionplus.service;

import java.util.List;

import auctionplus.model.AucSSPartModel;

public interface AucSSPartService {
	List<AucSSPartModel> getAll(int ssID);

	AucSSPartModel getLastest(int ssID);

	int count(int ssid);

	void insert(AucSSPartModel part);
}
