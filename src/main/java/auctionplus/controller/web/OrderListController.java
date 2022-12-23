package auctionplus.controller.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auctionplus.model.CategoryModel;
import auctionplus.model.OrderModel;
import auctionplus.model.WalletsModel;
import auctionplus.service.CategoryService;
import auctionplus.service.OrderService;
import auctionplus.service.Impl.CategoryServiceImpl;
import auctionplus.service.Impl.OrderServiceImpl;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = { "/order" })
public class OrderListController extends HttpServlet {
	OrderService ordS = new OrderServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Thiết lập tiếng việt
		resp.setContentType("text/htm");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		CategoryService cateS = new CategoryServiceImpl();
		String uid = req.getParameter("id");
		int Uid = Integer.parseInt(uid);
		List<OrderModel> od = ordS.getAll(Uid);
		List<CategoryModel> cate = cateS.getALLCategory();
		req.setAttribute("order", od);
		req.setAttribute("listcate", cate);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/views/OrderSuccessList.jsp");
		dispatcher.forward(req, resp);
	}

}
