package auctionplus.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import auctionplus.connection.DBConnect;
import auctionplus.dao.UserDao;
import auctionplus.model.DeliveryModel;
import auctionplus.model.RoleModel;
import auctionplus.model.UserModel;
import auctionplus.service.DeliveryService;
import auctionplus.service.RoleService;
import auctionplus.service.Impl.DeliveryServiceImpl;
import auctionplus.service.Impl.RoleServiceImpl;

public class UserDaoImpl extends DBConnect implements UserDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	RoleService roleService = new RoleServiceImpl();
	DeliveryService delService = new DeliveryServiceImpl();

	@Override
	public void insert(UserModel user) {

		String sql = "INSERT INTO users (last_name, first_name, email, CMND, address, phone_number, username, `password`, role_id) VALUES(?,?,?,?,?,?,?,?,?);";
		try {
			Connection conn = new DBConnect().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, user.getlName());
			ps.setString(2, user.getfName());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getCMND());
			ps.setInt(5, user.getAddress().getdId());
			ps.setString(6, user.getpNum());
			ps.setString(7, user.getuName());
			ps.setString(8, user.getuPass());
			ps.setInt(9, user.getRole().getrId());
			ps.executeUpdate();
			System.out.println(ps);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public void edit(UserModel newUser) {
		String sql = "UPDATE users SET last_name = ?, first_name = ?, email = ?, CMND = ?, address = ?, phone_number = ?, username = ?, `password` = ?, role_id = ? WHERE user_id = ?;";
		try {
			Connection conn = new DBConnect().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, newUser.getlName());
			ps.setString(2, newUser.getfName());
			ps.setString(3, newUser.getEmail());
			ps.setString(4, newUser.getCMND());
			ps.setInt(5, newUser.getAddress().getdId());
			ps.setString(6, newUser.getpNum());
			ps.setString(7, newUser.getuName());
			ps.setString(8, newUser.getuPass());
			ps.setInt(9, newUser.getRole().getrId());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM users WHERE user_id = ?;";
		try {
			Connection con = super.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public UserModel get(int id) {
		String sql = "SELECT users.last_name, users.first_name, users.email, users.CMND,deliveries.delivery_id, users.phone_number, users.username, users.`password`, roles.role_id  FROM users INNER JOIN deliveries ON users.address = deliveries.delivery_id INNER JOIN roles ON users.role_id = roles.role_id WHERE user_id = ?;";
		try {
			Connection con = super.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				DeliveryModel add = delService.get(Integer.parseInt(rs.getString("delivery_id")));
				RoleModel role = roleService.get(Integer.parseInt(rs.getString("role_id")));
				UserModel user = new UserModel();
				user.setlName(rs.getString("last_name"));
				user.setfName(rs.getString("first_name"));
				user.setEmail(rs.getString("email"));
				user.setCMND(rs.getString("CMND"));
				user.setAddress(add);
				user.setpNum(rs.getString("phone_number"));
				user.setuName(rs.getString("username"));
				user.setuPass(rs.getString("password"));
				user.setRole(role);
				return user;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<UserModel> getAll() {
		List<UserModel> list = new ArrayList<UserModel>();
		String sql = "SELECT users.last_name, users.first_name, users.email, users.CMND, deliveries.delivery_name, users.phone_number, users.username, users.`password`, roles.`name`  FROM users INNER JOIN deliveries ON users.address = deliveries.delivery_id INNER JOIN roles ON users.role_id = roles.role_id;";
		try {
			Connection con = super.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				DeliveryModel add = delService.get(rs.getInt("delivery_id"));
				RoleModel role = roleService.get(rs.getInt("role_id"));
				UserModel user = new UserModel();
				user.setlName(rs.getString("last_name"));
				user.setfName(rs.getString("first_name"));
				user.setEmail(rs.getString("email"));
				user.setCMND(rs.getString("CMND"));
				user.setAddress(add);
				user.setpNum(rs.getString("phone_number"));
				user.setuName(rs.getString("username"));
				user.setuPass(rs.getString("password"));
				user.setRole(role);
				list.add(user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<UserModel> search(String keyword) {
		List<UserModel> list = new ArrayList<UserModel>();
		String sql = "SELECT users.last_name, users.first_name, users.email, users.CMND, deliveries.delivery_name, users.phone_number, users.username, users.`password`, roles.`name`  FROM users INNER JOIN deliveries ON users.address = deliveries.delivery_id INNER JOIN roles ON users.role_id = roles.role_id LIKE users.first_name = ?;";
		try {
			Connection con = super.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				DeliveryModel add = delService.get(rs.getInt("delivery_id"));
				RoleModel role = roleService.get(rs.getInt("role_id"));
				UserModel user = new UserModel();
				user.setlName(rs.getString("last_name"));
				user.setfName(rs.getString("first_name"));
				user.setEmail(rs.getString("email"));
				user.setCMND(rs.getString("CMND"));
				user.setAddress(add);
				user.setpNum(rs.getString("phone_number"));
				user.setuName(rs.getString("username"));
				user.setuPass(rs.getString("password"));
				user.setRole(role);
				list.add(user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
