package auctionplus.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import auctionplus.connection.DBConnect;
import auctionplus.dao.AucSSPartDao;
import auctionplus.model.AucSSModel;
import auctionplus.model.AucSSPartModel;
import auctionplus.model.SupplierModel;
import auctionplus.service.AuctionSessionService;
import auctionplus.service.SupService;
import auctionplus.service.Impl.AuctionSessionServiceImpl;
import auctionplus.service.Impl.SupServiceImpl;

public class AucSSPartDaoImpl extends DBConnect implements AucSSPartDao {
	Connection conn = null;
	ResultSet rs = null;
	AuctionSessionService AucS = new AuctionSessionServiceImpl();
	SupService SupS = new SupServiceImpl();

	@Override
	public List<AucSSPartModel> getAll(int ssID) {
		List<AucSSPartModel> list = new ArrayList<AucSSPartModel>();
		String sql = "SELECT* FROM auction_session_participants WHERE session_id = ? ORDER BY auction_session_participants.auction_session_price DESC ";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, ssID);
			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				AucSSPartModel part = new AucSSPartModel();
				AucSSModel auc = AucS.get(rs.getInt("session_id"));
				SupplierModel sup = SupS.get(rs.getInt("supplier_id"));
				part.setSsId(auc);
				part.setSupId(sup);
				part.setAucSSPrice(rs.getDouble("auction_session_price"));
				part.setAucWin(rs.getBoolean("auction_winner"));
				list.add(part);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public void insert(AucSSPartModel part) {
		String sql = "CALL Auction_Place_Bid(?, ?, ?);";
		try {
			conn = new DBConnect().getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, part.getSsId().getSsId());
			ps.setInt(2, part.getSupId().getSupId());
			ps.setDouble(3, part.getAucSSPrice());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public static void main(String[] args) {
		AucSSPartDao dao = new AucSSPartDaoImpl();
		dao.insertStan(2, 3, 12345.0);
	}

	@Override
	public AucSSPartModel getLastest(int ssID) {
		String sql = "SELECT* FROM auction_session_participants WHERE session_id = ? ORDER BY auction_session_participants.auction_session_price ASC LIMIT 1; ";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, ssID);
			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				AucSSPartModel part = new AucSSPartModel();
				AucSSModel auc = AucS.get(rs.getInt("session_id"));
				SupplierModel sup = SupS.get(rs.getInt("supplier_id"));
				part.setSsId(auc);
				part.setSupId(sup);
				part.setAucSSPrice(rs.getDouble("auction_session_price"));
				part.setAucWin(rs.getBoolean("auction_winner"));
				return part;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int count(int ssid) {
		String sql = "SELECT COUNT(*) FROM auction_session_participants WHERE auction_session_participants.session_id =?;";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, ssid);
			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				return rs.getInt(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public void insertStan(int ss, int sup, Double p) {
		String sql = "INSERT INTO auction_session_participants (session_id, supplier_id, auction_session_price, auction_winner) VALUES (?, ?, ?, 0);";
		try {
			conn = new DBConnect().getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, ss);
			ps.setInt(2, sup);
			ps.setDouble(3, p);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
