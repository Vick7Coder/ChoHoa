package auctionplus.dao;

import auctionplus.model.UserModel;

public interface LoginDao {
	UserModel login(String us, String pass);
}
