package auctionplus.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import auctionplus.connection.DBConnect;
import auctionplus.dao.WalletDao;
import auctionplus.model.UserModel;
import auctionplus.model.WalletsModel;
import auctionplus.service.UserService;
import auctionplus.service.Impl.UserServiceImpl;

public class WalletDaoImpl extends DBConnect implements WalletDao {
	Connection conn = null;
	ResultSet rs = null;
	UserService userS = new UserServiceImpl();

	@Override
	public List<WalletsModel> getAll() {
		List<WalletsModel> list = new ArrayList<WalletsModel>();
		String sql = "SELECT * FROM wallets ";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			PreparedStatement ps = conn.prepareStatement(sql);

			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				WalletsModel wall = new WalletsModel();
				UserModel user = userS.get(rs.getInt("user_id"));
				wall.setwId(rs.getInt("wallet_id"));
				wall.setuId(user);
				wall.setBalance(rs.getDouble("balance"));
				list.add(wall);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public WalletsModel getByUid(int uid) {
		String sql = "SELECT * FROM wallets WHERE wallets.user_id =?; ";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, uid);
			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				WalletsModel wall = new WalletsModel();
				UserModel user = userS.get(rs.getInt("user_id"));
				wall.setwId(rs.getInt("wallet_id"));
				wall.setuId(user);
				wall.setBalance(rs.getDouble("balance"));
				return wall;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void insert(WalletsModel w) {
		String sql = "INSERT INTO wallets(wallets.user_id, wallets.balance) VALUES (?, ?); ";
		try {
			conn = new DBConnect().getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, w.getuId().getuId());
			ps.setDouble(2, w.getBalance());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public void edit(WalletsModel w) {
		String sql = "UPDATE wallets SET wallets.balance = ? WHERE wallets.wallet_id = ?";
		try {
			conn = new DBConnect().getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setDouble(1, w.getBalance());
			ps.setInt(2, w.getwId());
			ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
public static void main(String[] args) {
	WalletDao dao = new WalletDaoImpl();
	WalletsModel j = new WalletsModel();
	j.setwId(3);
	j.setBalance(14000000);
	dao.edit(j);
}
	@Override
	public WalletsModel get(int wid) {
		String sql = "SELECT * FROM wallets WHERE wallets.wallet_id =?; ";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, wid);
			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				WalletsModel wall = new WalletsModel();
				UserModel user = userS.get(rs.getInt("user_id"));
				wall.setwId(rs.getInt("wallet_id"));
				wall.setuId(user);
				wall.setBalance(rs.getDouble("balance"));
				return wall;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
