package auctionplus.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import auctionplus.connection.DBConnect;
import auctionplus.dao.CategoryDao;
import auctionplus.model.CategoryModel;

public class CategoryDaoImpl extends DBConnect implements CategoryDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	@Override
	public List<CategoryModel> getALLCategory() {
		List<CategoryModel> list = new ArrayList<CategoryModel>();
		String sql = "SELECT*FROM categories";
		try {
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);
			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				list.add(new CategoryModel(rs.getInt(1), rs.getString(2)));
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	@Override
	public CategoryModel insert(CategoryModel category) {
		String sql = "INSERT INTO categories (category_name) VALUES (?);";
		try {
			conn = new DBConnect().getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, category.getcName());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void edit(CategoryModel category) {
		String sql = "UPDATE categories SET category_name = ? WHERE category_id=?";
		try {
			conn = new DBConnect().getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, category.getcName());
			ps.setInt(2, category.getcId());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM categories WHERE category_id=?;";
		try {
			conn = new DBConnect().getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);

			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public CategoryModel get(int id) {
		String sql = "SELECT*FROM categories WHERE category_id = ?;";
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
				return new CategoryModel(rs.getInt(1), rs.getString(2));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

}
