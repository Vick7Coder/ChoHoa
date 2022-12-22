package auctionplus.controller.web;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auctionplus.model.AucSSModel;
import auctionplus.model.AucSSPartModel;
import auctionplus.model.CategoryModel;
import auctionplus.model.ProductModel;
import auctionplus.service.AucSSPartService;
import auctionplus.service.AuctionSessionService;
import auctionplus.service.CategoryService;
import auctionplus.service.ProductService;
import auctionplus.service.Impl.AucSSPartServiceImpl;
import auctionplus.service.Impl.AuctionSessionServiceImpl;
import auctionplus.service.Impl.CategoryServiceImpl;
import auctionplus.service.Impl.ProductServiceImpl;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = { "/auction-detail" })
public class AuctionDetailController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Thiết lập tiếng việt
		resp.setContentType("text/htm");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		// lấy tham số từ jsp
		String ssid = req.getParameter("ssid");
		String cid = req.getParameter("cid");
		int sid = Integer.parseInt(ssid);
		// step1: khởi tạo DAO
		ProductService prodS = new ProductServiceImpl();
		CategoryService cateS = new CategoryServiceImpl();
		AuctionSessionService AucS = new AuctionSessionServiceImpl();
		AucSSPartService part = new AucSSPartServiceImpl();
		// step2: Sử dụng Đối tượng List để chứa danh sách từ DAO
		List<CategoryModel> cate = cateS.getALLCategory();
		AucSSModel auc = AucS.get(sid);
		Date x = AucS.timeLife(sid);
		List<AucSSPartModel> partlist = part.getAll(sid);
		List<AucSSModel> recommentList = AucS.getAllAucByCid(cid);
		// step3: thiết lâp dữ liệu lên jsp

		req.setAttribute("listcate", cate);
		req.setAttribute("a", auc);
		req.setAttribute("dateT", x);
		req.setAttribute("partList", partlist);
		req.setAttribute("rcmList", recommentList);
		// step4: trả về trang jsp nào
		RequestDispatcher rq = req.getRequestDispatcher("/views/auction-detail.jsp");
		rq.forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
