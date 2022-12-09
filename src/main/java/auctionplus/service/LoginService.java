package auctionplus.service;

import auctionplus.model.UserModel;

public interface LoginService {
	UserModel login(String us, String pass);
}
