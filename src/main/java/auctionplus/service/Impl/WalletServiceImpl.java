package auctionplus.service.Impl;

import java.util.List;

import auctionplus.dao.WalletDao;
import auctionplus.dao.Impl.WalletDaoImpl;
import auctionplus.model.WalletsModel;
import auctionplus.service.WalletService;

public class WalletServiceImpl implements WalletService {
	WalletDao walletDao = new WalletDaoImpl();

	@Override
	public List<WalletsModel> getAll() {
		return walletDao.getAll();
	}

	@Override
	public WalletsModel getByUid(int uid) {
		return walletDao.getByUid(uid);
	}

	@Override
	public void insert(WalletsModel w) {
		walletDao.insert(w);

	}

	@Override
	public void edit(WalletsModel w) {
			
		WalletsModel oldWallet = walletDao.get(w.getwId());
		oldWallet.setBalance(w.getBalance());
		walletDao.edit(oldWallet);
		

	}

	@Override
	public WalletsModel get(int wid) {
		return walletDao.get(wid);
	}

}
