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
import auctionplus.service.CategoryService;
import auctionplus.service.ProductService;
import auctionplus.service.Impl.AuctionSessionServiceImpl;
import auctionplus.service.Impl.CategoryServiceImpl;
import auctionplus.service.Impl.ProductServiceImpl;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = { "/auction-list" })
public class AuctionListController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Thiết lập tiếng việt
		resp.setContentType("text/htm");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		// lấy tham số từ jsp
		String cid = req.getParameter("cid");
		// step1: khởi tạo DAO
		ProductService prod = new ProductServiceImpl();
		CategoryService cateS = new CategoryServiceImpl();
		AuctionSessionService auc = new AuctionSessionServiceImpl();
		// step2: Sử dụng Đối tượng List để chứa danh sách từ DAO
		List<CategoryModel> cate = cateS.getALLCategory();
		List<AucSSModel> listAuc = auc.getAll();
		
		/*String indexPage = req.getParameter("index");
		// khởi tạo trang đầu
		if (indexPage == null) {
			indexPage = "1";
		}
		int index = Integer.parseInt(indexPage);
		int cid1 = Integer.parseInt(cid);
		// step3: thiết lâp dữ liệu lên jsp
		if ("0".equals(cid)) {
			int count = prod.countAll();
			int endPage = count / 3;
			if (count % 3 != 0) {
				endPage++;
			}
			List<AucSSModel> list = auc.pagingAucSS(index);
			req.setAttribute("endP", endPage);
			req.setAttribute("allauc", list);
		} else {
			index = 1;
			int count = auc.countCid(cid1);

			int endPage = count / 3;
			if (count % 3 != 0) {
				endPage++;
			}
			List<AucSSModel> listAC = auc.pageAucSSByCId(cid, index);
			req.setAttribute("allauc", listAC);
			req.setAttribute("endP", endPage);
		}*/

		req.setAttribute("listcate", cate);
		req.setAttribute("listAuc", listAuc);
		/*req.setAttribute("tagactive", cid);
		req.setAttribute("tag", index);*/
		// step4: trả về trang jsp nào
		RequestDispatcher rq = req.getRequestDispatcher("/views/auction-list.jsp");
		rq.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
