package auctionplus.dao;


import java.sql.Date;
import java.util.List;

import auctionplus.model.AucSSModel;

public interface AucSSDao {
	int countAll();

	int countPid(int pid);

	int countCid(int cid);

	void insert(AucSSModel auc);

	void edit(AucSSModel auc);

	void delete(int id);

	AucSSModel get(int id);

	List<AucSSModel> getAllLifeTime();
	Date timeLife(int ssID);

	List<AucSSModel> getAll();

	List<AucSSModel> getAllAucByPid(String pId);

	List<AucSSModel> getAllAucByCid(String cId);

	List<AucSSModel> searchByProductName(String txtSearch);

	List<AucSSModel> pagingAucSS(int index);

	List<AucSSModel> pageAucSSByPId(String pid, int index);

	List<AucSSModel> pageAucSSByCId(String cid, int index);

	List<AucSSModel> getLast3Auc();
}
