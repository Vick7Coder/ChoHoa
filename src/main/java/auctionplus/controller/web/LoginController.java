package auctionplus.controller.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import auctionplus.dao.LoginDao;
import auctionplus.dao.Impl.LoginDaoImpl;
import auctionplus.model.UserModel;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = { "/login" })
public class LoginController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/decorators/web.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("user");
		String password = req.getParameter("pass");

		LoginDao loginDao = new LoginDaoImpl();
		UserModel account = loginDao.login(username, password);
		if (account == null) {
			req.setAttribute("mess", "Sai tài khoản và mật khẩu!");
			req.getRequestDispatcher("/decorators/web.jsp").forward(req, resp);
		} else {
			HttpSession session = req.getSession();
			session.setAttribute("acc", account);
			session.setAttribute("nameUSer", account.getfName());
			// thời gian tồn tại
			/* session.setMaxInactiveInterval(1000); */
			
			resp.sendRedirect(req.getContextPath()+"/home");
		}
	}
}
