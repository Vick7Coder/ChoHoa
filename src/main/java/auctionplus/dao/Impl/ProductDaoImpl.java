package auctionplus.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import auctionplus.connection.DBConnect;
import auctionplus.dao.ProductDao;
import auctionplus.model.ProductModel;

public class ProductDaoImpl extends DBConnect implements ProductDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	@Override
	public int countAll() {
		String sql = "SELECT COUNT(*) from Product";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);
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
	public int counCid(int cId) {
		String sql = "SELECT COUNT(*) FROM products WHERE category_id=?;";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);
			ps.setInt(1, cId);
			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				return rs.getInt(1);
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
	}

	@Override
	public void insert(ProductModel product) {
		String sql = "INSERT INTO products(product_name, product_image, detail, category_id) VALUES (?,?,?,?);";
		try {
			conn = new DBConnect().getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, product.getpName());
			ps.setString(2, product.getpImage());
			ps.setString(3, product.getDetail());
			ps.setInt(4, product.getcId());
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public void edit(ProductModel product) {
		String sql = "UPDATE products SET product_name = ?, product_image= ?, detail= ?, category_id= ? WHERE product_id=?;";
		try {
			conn = new DBConnect().getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, product.getpName());
			ps.setString(2, product.getpImage());
			ps.setString(3, product.getDetail());
			ps.setInt(4, product.getcId());
			ps.setInt(5, product.getpId());
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM products WHERE product_id = ?;";
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
	public List<ProductModel> getAll() {
		// Khai báo list để lưu danh sách sản phẩm
		List<ProductModel> list = new ArrayList<ProductModel>();
		// Khai báo chuỗi truy vấn
		String sql = "SELECT * FROM products";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);

			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				list.add(new ProductModel(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getInt(5)));
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	@Override
	public ProductModel get(int id) {
		String sql = "SELECT *FROM products WHERE product_id =?";
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
				return new ProductModel(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<ProductModel> getAllProductByCID(String cid) {
		// Khai báo list để lưu danh sách sản phẩm
		List<ProductModel> list = new ArrayList<ProductModel>();
		// Khai báo chuỗi truy vấn
		String sql = "SELECT *FROM products WHERE category_id =?";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);
			// gán giá trị cho từng dấu hỏi tham số
			ps.setString(1, cid);
			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				list.add(new ProductModel(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getInt(5)));
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	@Override
	public List<ProductModel> searchByProductName(String txtSearch) {
		// Khai báo list để lưu danh sách sản phẩm
		List<ProductModel> list = new ArrayList<ProductModel>();

		// Khai báo chuỗi truy vấn
		String sql = "SELECT * FROM products WHERE product_name LIKE ?";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);
			// gán giá trị cho từng dấu hỏi tham số
			ps.setString(1, "%" + txtSearch + "%");
			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				list.add(new ProductModel(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getInt(5)));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<ProductModel> pagingProduct(int index) {
		// Khai báo list để lưu danh sách sp
		List<ProductModel> list = new ArrayList<ProductModel>();
		String sql = " SELECT * FROM products ORDER BY product_id LIMIT ?, 3;";

		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);
			// truyền vào dấu hỏi(index-1)*3 vì 1-offset từ 0, 2- offset từ 3, 3- offset từ
			// 6

			ps.setInt(1, (index - 1) * 3);

			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				list.add(new ProductModel(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getInt(5)));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<ProductModel> pagingProductByCID(String cid, int index) {
		// Khai báo list để lưu danh sách sp
		List<ProductModel> list = new ArrayList<ProductModel>();
		String sql = "SELECT * FROM products WHERE category_id=? ORDER BY product_id LIMIT ?, 3;";

		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);
			// truyền vào dấu hỏi(index-1)*3 vì 1-offset từ 0, 2- offset từ 3, 3- offset từ
			// 6
			ps.setString(1, cid);
			ps.setInt(2, (index - 1) * 3);

			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				list.add(new ProductModel(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getInt(5)));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<ProductModel> getAllProduct() {
		// Khai báo list để lưu danh sách sản phẩm
		List<ProductModel> list = new ArrayList<ProductModel>();
		// Khai báo chuỗi truy vấn
		String sql = "SELECT * FROM products ORDER BY product_id DES";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);

			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				list.add(new ProductModel(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getInt(5)));
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

}
