package auctionplus.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import auctionplus.connection.DBConnect;
import auctionplus.dao.DeliveryDao;
import auctionplus.dao.RoleDao;
import auctionplus.model.DeliveryModel;
import auctionplus.model.RoleModel;

public class RoleDaoImpl extends DBConnect implements RoleDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	@Override
	public RoleModel get(int id) {
		String sql = "SELECT*FROM roles WHERE roles.role_id= ?;";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);
			// gán giá trị cho từng dấu hỏi tham số
			ps.setInt(1, id);
			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				return new RoleModel(rs.getInt(1), rs.getString(2));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	public static void main(String[] args) {
		RoleDao dao = new RoleDaoImpl();
		RoleModel j = dao.get(1);
		
		System.out.println(j.getrId());
	}

}
