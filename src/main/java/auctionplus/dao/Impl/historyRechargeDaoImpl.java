package auctionplus.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import auctionplus.connection.DBConnect;
import auctionplus.dao.historyRechargeDao;
import auctionplus.model.RechargeHistoriesModel;
import auctionplus.model.WalletsModel;
import auctionplus.service.WalletService;
import auctionplus.service.Impl.WalletServiceImpl;

public class historyRechargeDaoImpl extends DBConnect implements historyRechargeDao {
	Connection conn = null;
	ResultSet rs = null;
	WalletService walletS = new WalletServiceImpl();

	@Override
	public void insert(RechargeHistoriesModel r) {
		String sql = "INSERT INTO recharge_histories(recharge_histories.wallet_id, recharge_histories.`value`, recharge_histories.create_Date) VALUES (?, ?, NOW()); ";
		try {
			conn = new DBConnect().getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, r.getwId().getwId());
			ps.setDouble(2, r.getValue());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<RechargeHistoriesModel> getAllbyWid(int wid) {
		List<RechargeHistoriesModel> list = new ArrayList<RechargeHistoriesModel>();
		String sql = "SELECT * FROM recharge_histories WHERE recharge_histories.wallet_id =?;";
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
				RechargeHistoriesModel rch = new RechargeHistoriesModel();
				WalletsModel wall = walletS.get(rs.getInt("wallet_id"));
				rch.setHisId(rs.getInt("history_id"));
				rch.setwId(wall);
				rch.setValue(rs.getDouble("value"));
				rch.setcDate(rs.getDate("create_Date"));
				list.add(rch);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<RechargeHistoriesModel> getAll() {
		List<RechargeHistoriesModel> list = new ArrayList<RechargeHistoriesModel>();
		String sql = "SELECT * FROM recharge_histories;";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			PreparedStatement ps = conn.prepareStatement(sql);

			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				RechargeHistoriesModel rch = new RechargeHistoriesModel();
				WalletsModel wall = walletS.get(rs.getInt("wallet_id"));
				rch.setHisId(rs.getInt("history_id"));
				rch.setwId(wall);
				rch.setValue(rs.getDouble("value"));
				rch.setcDate(rs.getDate("create_Date"));
				list.add(rch);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
