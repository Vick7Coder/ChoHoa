package auctionplus.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import auctionplus.connection.DBConnect;
import auctionplus.dao.AucSSDao;
import auctionplus.model.AucSSModel;
import auctionplus.model.ProductModel;
import auctionplus.model.UserModel;
import auctionplus.service.ProductService;
import auctionplus.service.UserService;
import auctionplus.service.Impl.ProductServiceImpl;
import auctionplus.service.Impl.UserServiceImpl;

public class AucSSDaoImpl extends DBConnect implements AucSSDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	ProductService productS = new ProductServiceImpl();
	UserService userS = new UserServiceImpl();

	@Override
	public int countAll() {
		String sql = "SELECT COUNT(*) FROM auction_sessions";
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
			// TODO: handle exception
		}
		return 0;
	}

	@Override
	public int countPid(int pid) {
		String sql = "SELECT COUNT(*) FROM auction_sessions WHERE auction_sessions.product_id =?;";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);
			ps.setInt(1, pid);
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
	public void insert(AucSSModel auc) {
		String sql = "INSERT INTO auction_sessions (auction_organizer_id, product_id, reserve_price, closing_price, price_step, create_Date, start_Day, end_Day, is_Completed) VALUES (?,?,?,?,?,?,?,?,?);";
		try {
			conn = new DBConnect().getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, auc.getUser().getuId());
			ps.setInt(2, auc.getProd().getpId());
			ps.setDouble(3, auc.getRePrice());
			ps.setDouble(4, auc.getCloPrice());
			ps.setDouble(5, auc.getPriceStep());
			ps.setDate(6, auc.getCreaDate());
			ps.setDate(7, auc.getStartDay());
			ps.setDate(8, auc.getEndDay());
			ps.setBoolean(9, auc.isComplete());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void edit(AucSSModel auc) {
		String sql = "UPDATE auction_sessions SET auction_organizer_id = ?, product_id = ?, reserve_price = ?, closing_price = ?, price_step = ?, create_Date = ?, start_Day = ?, end_Day = ?, is_Completed = ? WHERE session_id = ?;";
		try {
			conn = new DBConnect().getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, auc.getUser().getuId());
			ps.setInt(2, auc.getProd().getpId());
			ps.setDouble(3, auc.getRePrice());
			ps.setDouble(4, auc.getCloPrice());
			ps.setDouble(5, auc.getPriceStep());
			ps.setDate(6, auc.getCreaDate());
			ps.setDate(7, auc.getStartDay());
			ps.setDate(8, auc.getEndDay());
			ps.setBoolean(9, auc.isComplete());
			ps.setInt(10, auc.getSsId());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM auction_sessions WHERE session_id = ?;";
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
	public AucSSModel get(int id) {
		String sql = "SELECT * FROM auction_sessions WHERE session_id = ?;";
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
				AucSSModel auc = new AucSSModel();
				ProductModel product = productS.get(rs.getInt("product_id"));
				UserModel user = userS.get(rs.getInt("auction_organizer_id"));
				auc.setSsId(rs.getInt("session_id"));
				auc.setUser(user);
				auc.setProd(product);
				auc.setRePrice(rs.getDouble("reserve_price"));
				auc.setCloPrice(rs.getDouble("closing_price"));
				auc.setPriceStep(rs.getDouble("price_step"));
				auc.setCreaDate(rs.getDate("create_Date"));
				auc.setStartDay(rs.getDate("start_Day"));
				auc.setEndDay(rs.getDate("end_Day"));
				auc.setComplete(rs.getBoolean("is_Completed"));
				return auc;

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<AucSSModel> getAll() {
		List<AucSSModel> list = new ArrayList<AucSSModel>();
		String sql = "SELECT * FROM auction_sessions;";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);
			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				AucSSModel auc = new AucSSModel();
				ProductModel product = productS.get(rs.getInt("product_id"));
				UserModel user = userS.get(rs.getInt("auction_organizer_id"));
				auc.setSsId(rs.getInt("session_id"));
				auc.setUser(user);
				auc.setProd(product);
				auc.setRePrice(rs.getDouble("reserve_price"));
				auc.setCloPrice(rs.getDouble("closing_price"));
				auc.setPriceStep(rs.getDouble("price_step"));
				auc.setCreaDate(rs.getDate("create_Date"));
				auc.setStartDay(rs.getDate("start_Day"));
				auc.setEndDay(rs.getDate("end_Day"));
				auc.setComplete(rs.getBoolean("is_Completed"));
				list.add(auc);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<AucSSModel> getAllLifeTime() {
		List<AucSSModel> list = new ArrayList<AucSSModel>();
		String sql = "	SELECT auction_sessions.*\r\n" + 
				"		FROM auction_sessions \r\n" + 
				"													INNER JOIN users on auction_sessions.auction_organizer_id=users.user_id\r\n" + 
				"													INNER JOIN products on auction_sessions.product_id=products.product_id\r\n" + 
				"		where auction_sessions.is_Completed=0;";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);
			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				AucSSModel auc = new AucSSModel();
				ProductModel product = productS.get(rs.getInt("product_id"));
				UserModel user = userS.get(rs.getInt("auction_organizer_id"));
				auc.setSsId(rs.getInt("session_id"));
				auc.setUser(user);
				auc.setProd(product);
				auc.setRePrice(rs.getDouble("reserve_price"));
				auc.setCloPrice(rs.getDouble("closing_price"));
				auc.setPriceStep(rs.getDouble("price_step"));
				auc.setCreaDate(rs.getDate("create_Date"));
				auc.setStartDay(rs.getDate("start_Day"));
				auc.setEndDay(rs.getDate("end_Day"));
				auc.setComplete(rs.getBoolean("is_Completed"));
				list.add(auc);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<AucSSModel> getAllAucByPid(String pId) {
		List<AucSSModel> list = new ArrayList<AucSSModel>();
		String sql = "SELECT * FROM auction_sessions WHERE product_id = ?;";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);
			// gán giá trị cho từng dấu hỏi tham số
			ps.setString(1, pId);
			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				AucSSModel auc = new AucSSModel();
				ProductModel product = productS.get(rs.getInt("product_id"));
				UserModel user = userS.get(rs.getInt("auction_organizer_id"));
				auc.setSsId(rs.getInt("session_id"));
				auc.setUser(user);
				auc.setProd(product);
				auc.setRePrice(rs.getDouble("reserve_price"));
				auc.setCloPrice(rs.getDouble("closing_price"));
				auc.setPriceStep(rs.getDouble("price_step"));
				auc.setCreaDate(rs.getDate("create_Date"));
				auc.setStartDay(rs.getDate("start_Day"));
				auc.setEndDay(rs.getDate("end_Day"));
				auc.setComplete(rs.getBoolean("is_Completed"));
				list.add(auc);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<AucSSModel> searchByProductName(String txtSearch) {
		List<AucSSModel> list = new ArrayList<AucSSModel>();
		String sql = "SELECT auction_sessions.* FROM auction_sessions INNER JOIN products ON auction_sessions.product_id = products.product_id LIKE products.product_name= ?;";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);
			// gán giá trị cho từng dấu hỏi tham số
			ps.setString(1, txtSearch);
			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				AucSSModel auc = new AucSSModel();
				ProductModel product = productS.get(rs.getInt("product_id"));
				UserModel user = userS.get(rs.getInt("auction_organizer_id"));
				auc.setSsId(rs.getInt("session_id"));
				auc.setUser(user);
				auc.setProd(product);
				auc.setRePrice(rs.getDouble("reserve_price"));
				auc.setCloPrice(rs.getDouble("closing_price"));
				auc.setPriceStep(rs.getDouble("price_step"));
				auc.setCreaDate(rs.getDate("create_Date"));
				auc.setStartDay(rs.getDate("start_Day"));
				auc.setEndDay(rs.getDate("end_Day"));
				auc.setComplete(rs.getBoolean("is_Completed"));
				list.add(auc);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<AucSSModel> pagingAucSS(int index) {
		List<AucSSModel> list = new ArrayList<AucSSModel>();
		String sql = "SELECT * FROM auction_sessions ORDER BY session_id LIMIT ?, 3;";
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
				AucSSModel auc = new AucSSModel();
				ProductModel product = productS.get(rs.getInt("product_id"));
				UserModel user = userS.get(rs.getInt("auction_organizer_id"));
				auc.setSsId(rs.getInt("session_id"));
				auc.setUser(user);
				auc.setProd(product);
				auc.setRePrice(rs.getDouble("reserve_price"));
				auc.setCloPrice(rs.getDouble("closing_price"));
				auc.setPriceStep(rs.getDouble("price_step"));
				auc.setCreaDate(rs.getDate("create_Date"));
				auc.setStartDay(rs.getDate("start_Day"));
				auc.setEndDay(rs.getDate("end_Day"));
				auc.setComplete(rs.getBoolean("is_Completed"));
				list.add(auc);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<AucSSModel> pageAucSSByPId(String pid, int index) {
		List<AucSSModel> list = new ArrayList<AucSSModel>();
		String sql = "SELECT * FROM auction_sessions WHERE product_id= ? ORDER BY session_id LIMIT ?, 3;";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);
			// truyền vào dấu hỏi(index-1)*3 vì 1-offset từ 0, 2- offset từ 3, 3- offset từ
			// 6
			ps.setString(1, pid);
			ps.setInt(2, (index - 1) * 3);
			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {

				AucSSModel auc = new AucSSModel();
				ProductModel product = productS.get(rs.getInt("product_id"));
				UserModel user = userS.get(rs.getInt("auction_organizer_id"));
				auc.setSsId(rs.getInt("session_id"));
				auc.setUser(user);
				auc.setProd(product);
				auc.setRePrice(rs.getDouble("reserve_price"));
				auc.setCloPrice(rs.getDouble("closing_price"));
				auc.setPriceStep(rs.getDouble("price_step"));
				auc.setCreaDate(rs.getDate("create_Date"));
				auc.setStartDay(rs.getDate("start_Day"));
				auc.setEndDay(rs.getDate("end_Day"));
				auc.setComplete(rs.getBoolean("is_Completed"));
				list.add(auc);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<AucSSModel> getLast3Auc() {
		List<AucSSModel> list = new ArrayList<AucSSModel>();
		String sql = "SELECT * FROM auction_sessions ORDER BY session_id DESC LIMIT 3;";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);
			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {

				AucSSModel auc = new AucSSModel();
				ProductModel product = productS.get(rs.getInt("product_id"));
				UserModel user = userS.get(rs.getInt("auction_organizer_id"));
				auc.setSsId(rs.getInt("session_id"));
				auc.setUser(user);
				auc.setProd(product);
				auc.setRePrice(rs.getDouble("reserve_price"));
				auc.setCloPrice(rs.getDouble("closing_price"));
				auc.setPriceStep(rs.getDouble("price_step"));
				auc.setCreaDate(rs.getDate("create_Date"));
				auc.setStartDay(rs.getDate("start_Day"));
				auc.setEndDay(rs.getDate("end_Day"));
				auc.setComplete(rs.getBoolean("is_Completed"));
				list.add(auc);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public static void main(String[] args) {
		AucSSDao dao = new AucSSDaoImpl();
		List<AucSSModel> list = dao.pageAucSSByCId("1", 1);
		for (AucSSModel i : list) {
			System.out.println(i.toString());
		}
	}

	@Override
	public List<AucSSModel> getAllAucByCid(String cId) {
		List<AucSSModel> list = new ArrayList<AucSSModel>();
		String sql = "SELECT auction_sessions.* FROM auction_sessions INNER JOIN products ON auction_sessions.product_id = products.product_id WHERE products.category_id = ?;";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);
			// gán giá trị cho từng dấu hỏi tham số
			ps.setString(1, cId);
			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				AucSSModel auc = new AucSSModel();
				ProductModel product = productS.get(rs.getInt("product_id"));
				UserModel user = userS.get(rs.getInt("auction_organizer_id"));
				auc.setSsId(rs.getInt("session_id"));
				auc.setUser(user);
				auc.setProd(product);
				auc.setRePrice(rs.getDouble("reserve_price"));
				auc.setCloPrice(rs.getDouble("closing_price"));
				auc.setPriceStep(rs.getDouble("price_step"));
				auc.setCreaDate(rs.getDate("create_Date"));
				auc.setStartDay(rs.getDate("start_Day"));
				auc.setEndDay(rs.getDate("end_Day"));
				auc.setComplete(rs.getBoolean("is_Completed"));
				list.add(auc);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<AucSSModel> pageAucSSByCId(String cid, int index) {
		List<AucSSModel> list = new ArrayList<AucSSModel>();
		String sql = "SELECT auction_sessions.* FROM auction_sessions INNER JOIN products ON auction_sessions.product_id = products.product_id WHERE products.category_id = ? ORDER BY auction_sessions.product_id LIMIT ?, 3;";
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

				AucSSModel auc = new AucSSModel();
				ProductModel product = productS.get(rs.getInt("product_id"));
				UserModel user = userS.get(rs.getInt("auction_organizer_id"));
				auc.setSsId(rs.getInt("session_id"));
				auc.setUser(user);
				auc.setProd(product);
				auc.setRePrice(rs.getDouble("reserve_price"));
				auc.setCloPrice(rs.getDouble("closing_price"));
				auc.setPriceStep(rs.getDouble("price_step"));
				auc.setCreaDate(rs.getDate("create_Date"));
				auc.setStartDay(rs.getDate("start_Day"));
				auc.setEndDay(rs.getDate("end_Day"));
				auc.setComplete(rs.getBoolean("is_Completed"));
				list.add(auc);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int countCid(int cid) {
		String sql = "SELECT COUNT(*) FROM auction_sessions INNER JOIN products ON auction_sessions.product_id = products.product_id WHERE products.category_id = 1;";
		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);
			ps.setInt(1, cid);
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

}
