package auctionplus.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import auctionplus.connection.DBConnect;
import auctionplus.dao.LoginDao;
import auctionplus.model.DeliveryModel;
import auctionplus.model.RoleModel;
import auctionplus.model.UserModel;
import auctionplus.service.DeliveryService;
import auctionplus.service.RoleService;
import auctionplus.service.Impl.DeliveryServiceImpl;
import auctionplus.service.Impl.RoleServiceImpl;

public class LoginDaoImpl extends DBConnect implements LoginDao {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	RoleService roleService = new RoleServiceImpl();
	DeliveryService delService = new DeliveryServiceImpl();

	@Override
	public UserModel login(String us, String pass) {
		String sql = "select*from users where UserName=? and Password=?;";

		try {
			// mở kết nối database
			conn = new DBConnect().getConnection();
			// ném câu query qua sql
			ps = conn.prepareStatement(sql);
			// gán giá trị cho từng dấu hỏi tham s
			ps.setString(1, us);
			ps.setString(2, pass);
			// chạy query và nhận kết quả
			rs = ps.executeQuery();
			// lấy từ ResultSet đổ vào
			while (rs.next()) {
				DeliveryModel add = delService.get(Integer.parseInt(rs.getString("address")));
				RoleModel role = roleService.get(Integer.parseInt(rs.getString("role_id")));
				UserModel user = new UserModel();
				user.setlName(rs.getString("last_name"));
				user.setfName(rs.getString("first_name"));
				user.setEmail(rs.getString("email"));
				user.setCMND(rs.getString("CMND"));
				user.setAddress(add);
				user.setpNum(rs.getString("phone_number"));
				user.setuName(rs.getString("username"));
				user.setuPass(rs.getString("password"));
				user.setRole(role);
				return user;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public static void main(String[] args) {
		LoginDao log = new LoginDaoImpl();
		UserModel j = log.login("truongphuc", "123");
		System.out.println(j.toString());
		
	}

}
