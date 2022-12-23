package auctionplus.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import auctionplus.model.WalletsModel;
import auctionplus.service.WalletService;
import auctionplus.service.Impl.WalletServiceImpl;
@SuppressWarnings("serial")
@WebServlet(urlPatterns= {"/admin/wallet/list"})
public class WalletsController extends HttpServlet{
	WalletService wallS = new WalletServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<WalletsModel> wallList = wallS.getAll();
		req.setAttribute("wallList", wallList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/views/admin/wallets.jsp");
		dispatcher.forward(req, resp);
	}

}
