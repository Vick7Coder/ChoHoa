package auctionplus.controller.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import auctionplus.service.DeliveryService;
import auctionplus.service.RoleService;
import auctionplus.service.UserService;
import auctionplus.service.Impl.DeliveryServiceImpl;
import auctionplus.service.Impl.RoleServiceImpl;
import auctionplus.service.Impl.UserServiceImpl;
import auctionplus.model.DeliveryModel;
import auctionplus.model.UserModel;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = { "/register" })
public class RegisterController extends HttpServlet {
	UserService userS = new UserServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Thiết lập tiếng việt
		resp.setContentType("text/htm");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		// step1: khởi tạo DAO
		DeliveryService add = new DeliveryServiceImpl();
		List<DeliveryModel> listadd = add.getAll();
		req.setAttribute("listadd", listadd);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/views/register.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserModel us = new UserModel();
		DeliveryService setS = new DeliveryServiceImpl();
		RoleService roleS = new RoleServiceImpl();

		DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
		ServletFileUpload servletFileUpload = new ServletFileUpload(diskFileItemFactory);
		servletFileUpload.setHeaderEncoding("UTF-8");
		try {
			resp.setContentType("text/html");
			resp.setCharacterEncoding("UTF-8");
			req.setCharacterEncoding("UTF-8");
			List<FileItem> items = servletFileUpload.parseRequest(req);
			for (FileItem item : items) {
				if (item.getFieldName().equals("ten")) {
					us.setfName(item.getString("UTF-8"));
				} else if (item.getFieldName().equals("ho")) {
					us.setlName(item.getString("UTF-8"));
				} else if (item.getFieldName().equals("mail")) {
					us.setEmail(item.getString("UTF-8"));
				} else if (item.getFieldName().equals("chungminh")) {
					us.setCMND(item.getString("UTF-8"));
				} else if (item.getFieldName().equals("diachi")) {
					us.setAddress(setS.get(Integer.parseInt(item.getString("UTF-8"))));
				} else if (item.getFieldName().equals("sdt")) {
					us.setpNum(item.getString("UTF-8"));
				} else if (item.getFieldName().equals("user")) {
					us.setuName(item.getString("UTF-8"));
				} else if (item.getFieldName().equals("pass")) {
					us.setuPass(item.getString("UTF-8"));
				}
				us.setRole(roleS.get(1));
			}
			userS.insert(us);
			resp.sendRedirect(req.getContextPath() + "/home");
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
