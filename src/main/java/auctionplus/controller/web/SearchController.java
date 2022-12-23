package auctionplus.controller.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auctionplus.model.AucSSModel;
import auctionplus.model.CategoryModel;
import auctionplus.service.AuctionSessionService;
import auctionplus.service.CategoryService;
import auctionplus.service.Impl.AuctionSessionServiceImpl;
import auctionplus.service.Impl.CategoryServiceImpl;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = { "/search" })
public class SearchController extends HttpServlet {
	AuctionSessionService aucS = new AuctionSessionServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		CategoryService cateS = new CategoryServiceImpl();
		String txt1 = req.getParameter("txt");

		List<CategoryModel> cate = cateS.getALLCategory();
		List<AucSSModel> auc = aucS.searchByProductName(txt1);
		req.setAttribute("listAuc", auc);
		req.setAttribute("listcate", cate);
		RequestDispatcher rq = req.getRequestDispatcher("/views/auction-list.jsp");
		rq.forward(req, resp);
	}
}
