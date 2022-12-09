package auctionplus.service.Impl;

import auctionplus.dao.LoginDao;
import auctionplus.dao.Impl.LoginDaoImpl;
import auctionplus.model.UserModel;
import auctionplus.service.LoginService;

public class LoginServiceImpl implements LoginService {
	LoginDao loginDao = new LoginDaoImpl();

	@Override
	public UserModel login(String us, String pass) {
		return loginDao.login(us, pass);
	}

}
