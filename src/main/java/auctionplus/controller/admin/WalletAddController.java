package auctionplus.controller.admin;

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

import auctionplus.model.UserModel;
import auctionplus.model.WalletsModel;
import auctionplus.service.UserService;
import auctionplus.service.WalletService;
import auctionplus.service.Impl.UserServiceImpl;
import auctionplus.service.Impl.WalletServiceImpl;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = { "/admin/wallet/add" })
public class WalletAddController extends HttpServlet {
	WalletService wallS = new WalletServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Thiết lập tiếng việt
				resp.setContentType("text/htm");
				resp.setCharacterEncoding("UTF-8");
				req.setCharacterEncoding("UTF-8");
				
				RequestDispatcher dispatcher = req.getRequestDispatcher("/views/admin/add-wallet.jsp");
				dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		WalletsModel wall = new WalletsModel();
		UserService userS = new UserServiceImpl();
		DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
		ServletFileUpload servletFileUpload = new ServletFileUpload(diskFileItemFactory);
		servletFileUpload.setHeaderEncoding("UTF-8");
		try {
			resp.setContentType("text/html");
			resp.setCharacterEncoding("UTF-8");
			req.setCharacterEncoding("UTF-8");
			List<FileItem> items = servletFileUpload.parseRequest(req);
			for (FileItem item : items) {
				if (item.getFieldName().equals("id")) {
					wall.setwId(Integer.parseInt(item.getString()));
				} else if (item.getFieldName().equals("userId")) {
					wall.setuId(userS.get(Integer.parseInt(item.getString())));
				} else if (item.getFieldName().equals("balance")) {
					wall.setBalance(Double.parseDouble(item.getString()));
				}
			}
			wallS.insert(wall);
			resp.sendRedirect(req.getContextPath() + "/admin/wallet/list");

		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
