package auctionplus.service.Impl;

import java.util.List;

import auctionplus.dao.AucSSDao;
import auctionplus.dao.Impl.AucSSDaoImpl;
import auctionplus.model.AucSSModel;
import auctionplus.service.AuctionSessionService;

public class AuctionSessionServiceImpl implements AuctionSessionService {

	AucSSDao aucDao = new AucSSDaoImpl();

	@Override
	public int countAll() {
		return aucDao.countAll();
	}

	@Override
	public int countPid(int pid) {
		return aucDao.countPid(pid);
	}

	@Override
	public void insert(AucSSModel auc) {
		aucDao.insert(auc);

	}

	@Override
	public void edit(AucSSModel auc) {
		AucSSModel oldAucSS = aucDao.get(auc.getSsId());
		oldAucSS.setUser(auc.getUser());
		oldAucSS.setProd(auc.getProd());
		oldAucSS.setRePrice(auc.getRePrice());
		oldAucSS.setCloPrice(auc.getCloPrice());
		oldAucSS.setPriceStep(auc.getPriceStep());
		oldAucSS.setCreaDate(auc.getCreaDate());
		oldAucSS.setStartDay(auc.getStartDay());
		oldAucSS.setEndDay(auc.getEndDay());
		oldAucSS.setComplete(auc.isComplete());
		aucDao.edit(oldAucSS);

	}

	@Override
	public void delete(int id) {
		aucDao.delete(id);

	}

	@Override
	public AucSSModel get(int id) {
		return aucDao.get(id);
	}

	@Override
	public List<AucSSModel> getAll() {
		return aucDao.getAll();
	}

	@Override
	public List<AucSSModel> getAllAucByPid(String pId) {
		return aucDao.getAllAucByPid(pId);
	}

	@Override
	public List<AucSSModel> searchByProductName(String txtSearch) {
		return aucDao.searchByProductName(txtSearch);
	}

	@Override
	public List<AucSSModel> pagingAucSS(int index) {
		return aucDao.pagingAucSS(index);
	}

	@Override
	public List<AucSSModel> pageAucSSByPId(String pid, int index) {
		return aucDao.pageAucSSByPId(pid, index);
	}

	@Override
	public List<AucSSModel> getLast3Auc() {
		return aucDao.getLast3Auc();
	}

	@Override
	public List<AucSSModel> getAllAucByCid(String cId) {
		return aucDao.getAllAucByCid(cId);
	}

	@Override
	public int countCid(int cid) {
		return aucDao.countCid(cid);
	}

	@Override
	public List<AucSSModel> pageAucSSByCId(String cid, int index) {
		return aucDao.pageAucSSByCId(cid, index);
	}

}
