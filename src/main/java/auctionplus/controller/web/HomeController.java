package auctionplus.controller.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auctionplus.dao.Impl.CategoryDaoImpl;
import auctionplus.model.AucSSModel;
import auctionplus.model.CategoryModel;
import auctionplus.service.AuctionSessionService;
import auctionplus.service.Impl.AuctionSessionServiceImpl;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = { "/home" })
public class HomeController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Thiết lập tiếng việt
		resp.setContentType("text/htm");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		// step1: khởi tạo DAO
		CategoryDaoImpl categoryDao = new CategoryDaoImpl();
		AuctionSessionService auc = new AuctionSessionServiceImpl();
		// step2: Sử dụng Đối tượng List để chứa danh sách từ DAO
		List<CategoryModel> cate = categoryDao.getALLCategory();
		List<AucSSModel> list3lastAuc = auc.getLast3Auc();
		// step3: thiết lâp dữ liệu lên jsp
		req.setAttribute("listcate", cate);
		req.setAttribute("last3Auc", list3lastAuc);
		//step4: trả về trang jsp nào
		RequestDispatcher rq = req.getRequestDispatcher("/views/home.jsp");
		rq.forward(req, resp);

	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
