package auctionplus.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import auctionplus.connection.DBConnect;
import auctionplus.dao.AucSSDao;
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
		String sql = "INSERT INTO auction_session_participants (session_id, supplier_id, auction_session_price, auction_winner) VALUES (?, ?, ?, ?);";
		try {
			conn = new DBConnect().getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, part.getSsId().getSsId());
			ps.setInt(2, part.getSupId().getSupId());
			ps.setDouble(3, part.getAucSSPrice());
			ps.setBoolean(4, part.isAucWin());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public static void main(String[] args) {
		AucSSPartDao dao = new AucSSPartDaoImpl();
		List<AucSSPartModel> list = dao.getAll(2);
		for (AucSSPartModel i : list) {
			System.out.println(i.toString());
		}
	}

}
