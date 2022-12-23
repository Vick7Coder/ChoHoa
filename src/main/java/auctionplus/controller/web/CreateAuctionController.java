package auctionplus.controller.web;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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

import auctionplus.model.AucSSModel;
import auctionplus.model.CategoryModel;
import auctionplus.model.ProductModel;
import auctionplus.model.UserModel;
import auctionplus.service.AuctionSessionService;
import auctionplus.service.CategoryService;
import auctionplus.service.DeliveryService;
import auctionplus.service.ProductService;
import auctionplus.service.RoleService;
import auctionplus.service.UserService;
import auctionplus.service.Impl.AuctionSessionServiceImpl;
import auctionplus.service.Impl.CategoryServiceImpl;
import auctionplus.service.Impl.DeliveryServiceImpl;
import auctionplus.service.Impl.ProductServiceImpl;
import auctionplus.service.Impl.RoleServiceImpl;
import auctionplus.service.Impl.UserServiceImpl;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = { "/create-auction" })
public class CreateAuctionController extends HttpServlet {
	AuctionSessionService aucS = new AuctionSessionServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Thiết lập tiếng việt
		resp.setContentType("text/htm");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		// lấy tham số từ jsp
		String cid = req.getParameter("uid");
		int uid = Integer.parseInt(cid);
		// step1: khởi tạo DAO
		ProductService prod = new ProductServiceImpl();
		CategoryService cateS = new CategoryServiceImpl();
		AuctionSessionService auc = new AuctionSessionServiceImpl();
		UserService userS = new UserServiceImpl();
		// step2: Sử dụng Đối tượng List để chứa danh sách từ DAO
		List<CategoryModel> cate = cateS.getALLCategory();
		List<ProductModel> pr = prod.getAll();
		UserModel u = userS.get(uid);

		req.setAttribute("user", u);
		req.setAttribute("prod", pr);
		req.setAttribute("listcate", cate);
		// step4: trả về trang jsp nào
		RequestDispatcher rq = req.getRequestDispatcher("/views/createauction.jsp");
		rq.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		AucSSModel auc = new AucSSModel();
		ProductService prodS = new ProductServiceImpl();
		UserService user = new UserServiceImpl();
		UserModel ngtao = user.get(Integer.parseInt(req.getParameter("ten")));
		ProductModel sp = prodS.get(Integer.parseInt(req.getParameter("sanpham")));
		Double begin = Double.parseDouble(req.getParameter("khoidiem"));
		Double end = Double.parseDouble(req.getParameter("muangay"));
		Double step = Double.parseDouble(req.getParameter("step"));
		String batdau = req.getParameter("batdau");
		String ketthuc = req.getParameter("ketthuc");
		
		try {
			
			Date beginDate = Date.valueOf(batdau);
			Date endDate = Date.valueOf(ketthuc);
			

			auc.setUser(ngtao);
			auc.setProd(sp);
			auc.setRePrice(begin);
			auc.setCloPrice(end);
			auc.setStartDay(beginDate);
			auc.setEndDay(endDate);
			auc.setPriceStep(step);
			aucS.insert(auc);
		}  catch (Exception e) {
			e.printStackTrace();
		}

	}
}
