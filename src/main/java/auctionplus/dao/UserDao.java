package auctionplus.dao;

import java.util.List;

import auctionplus.model.UserModel;

public interface UserDao {
	void insert(UserModel user);

	void edit(UserModel newUser);

	void delete(int id);

	UserModel get(int id);

	List<UserModel> getAll();

	List<UserModel> search(String keyword);
}
