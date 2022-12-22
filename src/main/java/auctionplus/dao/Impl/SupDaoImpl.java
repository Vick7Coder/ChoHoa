package auctionplus.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import auctionplus.connection.DBConnect;
import auctionplus.dao.SupDao;
import auctionplus.model.SupplierModel;
import auctionplus.model.UserModel;
import auctionplus.service.UserService;
import auctionplus.service.Impl.UserServiceImpl;

public class SupDaoImpl extends DBConnect implements SupDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	UserService userS = new UserServiceImpl();

	@Override
	public List<SupplierModel> getAll() {
		List<SupplierModel> list = new ArrayList<SupplierModel>();
		String sql = "SELECT * FROM suppliers;";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);
			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				SupplierModel sup = new SupplierModel();
				UserModel user = userS.get(rs.getInt("owner_id"));
				sup.setSupId(rs.getInt("supplier_id"));
				sup.setoId(user);
				sup.setSupName(rs.getString("supplier_name"));
				list.add(sup);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public SupplierModel get(int supId) {
		String sql = "SELECT * FROM suppliers WHERE suppliers.supplier_id = ?;";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);
			// gán giá trị cho từng dấu hỏi tham số
			ps.setInt(1, supId);
			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				SupplierModel sup = new SupplierModel();
				UserModel user = userS.get(rs.getInt("owner_id"));
				sup.setSupId(rs.getInt("supplier_id"));
				sup.setoId(user);
				sup.setSupName(rs.getString("supplier_name"));
				return sup;

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
