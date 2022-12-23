package auctionplus.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import auctionplus.connection.DBConnect;
import auctionplus.dao.OrderDao;
import auctionplus.model.OrderModel;

public class OrderDaoImpl extends DBConnect implements OrderDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	@Override
	public List<OrderModel> getAll(int uid) {
		// Khai báo list để lưu danh sách sản phẩm
		List<OrderModel> list = new ArrayList<OrderModel>();
		// Khai báo chuỗi truy vấn
		String sql = "SELECT orders.* FROM orders INNER JOIN auction_sessions ON orders.session_id = auction_sessions.session_id\r\n"
				+ "INNER JOIN users on auction_sessions.auction_organizer_id = users.user_id WHERE users.user_id =?;";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);
			ps.setInt(1, uid);
			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				list.add(new OrderModel(rs.getInt(1), rs.getInt(2), rs.getDouble(3), rs.getDate(4),rs.getInt(5), rs.getBoolean(6)));
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

}
