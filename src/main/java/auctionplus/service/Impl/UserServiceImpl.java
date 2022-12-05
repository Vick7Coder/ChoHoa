package auctionplus.service.Impl;

import java.util.List;

import auctionplus.dao.UserDao;
import auctionplus.dao.Impl.UserDaoImpl;
import auctionplus.model.UserModel;
import auctionplus.service.UserService;

public class UserServiceImpl implements UserService {
	UserDao userDao = new UserDaoImpl();

	@Override
	public void insert(UserModel user) {
		userDao.insert(user);

	}

	@Override
	public void edit(UserModel newUser) {
		UserModel oldUser = userDao.get(newUser.getuId());
		oldUser.setlName(newUser.getlName());
		oldUser.setfName(newUser.getfName());
		oldUser.setEmail(newUser.getEmail());
		oldUser.setCMND(newUser.getCMND());
		oldUser.setAddress(newUser.getAddress());
		oldUser.setpNum(newUser.getpNum());
		oldUser.setuName(newUser.getuName());
		oldUser.setuPass(newUser.getuPass());
		oldUser.setRole(newUser.getRole());
		userDao.edit(oldUser);

	}

	@Override
	public void delete(int id) {
		userDao.delete(id);

	}

	@Override
	public UserModel get(int id) {
		return userDao.get(id);
	}

	@Override
	public List<UserModel> getAll() {
		return userDao.getAll();
	}

	@Override
	public List<UserModel> search(String keyword) {
		return userDao.search(keyword);
	}

}
