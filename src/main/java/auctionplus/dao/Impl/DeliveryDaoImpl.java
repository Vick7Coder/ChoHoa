package auctionplus.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import auctionplus.connection.DBConnect;
import auctionplus.dao.DeliveryDao;
import auctionplus.model.DeliveryModel;

public class DeliveryDaoImpl extends DBConnect implements DeliveryDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	@Override
	public DeliveryModel get(int id) {
		String sql = "SELECT * FROM deliveries WHERE deliveries.delivery_id=?;";
		try {
			conn = new DBConnect().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new DeliveryModel(rs.getInt(1), rs.getString(2), rs.getDouble(3));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public static void main(String[] args) {
		DeliveryDao dao = new DeliveryDaoImpl();
		DeliveryModel j = dao.get(2);
		System.out.println(j.toString());
	}

}
