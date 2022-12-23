package auctionplus.controller.web;

import java.io.IOException;
import java.util.List;

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
import auctionplus.model.AucSSPartModel;
import auctionplus.model.SupplierModel;
import auctionplus.model.UserModel;
import auctionplus.service.AucSSPartService;
import auctionplus.service.AuctionSessionService;
import auctionplus.service.DeliveryService;
import auctionplus.service.RoleService;
import auctionplus.service.SupService;
import auctionplus.service.Impl.AucSSPartServiceImpl;
import auctionplus.service.Impl.AuctionSessionServiceImpl;
import auctionplus.service.Impl.DeliveryServiceImpl;
import auctionplus.service.Impl.RoleServiceImpl;
import auctionplus.service.Impl.SupServiceImpl;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = { "/auction-offer" })
public class AuctionOfferController extends HttpServlet {
	AucSSPartService partS = new AucSSPartServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AuctionSessionService aucs = new AuctionSessionServiceImpl();
		SupService sups = new SupServiceImpl();

		String phien = req.getParameter("phien");
		String sup = req.getParameter("supp");
		String gia = req.getParameter("offer");
		int phienn = Integer.parseInt(phien);
		int supp = Integer.parseInt(sup);
		Double of = Double.parseDouble(gia);
		AucSSPartModel hj = new AucSSPartModel(aucs.get(phienn), sups.get(supp), of, false);
		partS.insert(hj);
		resp.sendRedirect(req.getContextPath() + "/auction-detail?ssid="+phien+"&cid="+aucs.get(phienn).getProd().getcId()+"&uid="+sups.get(supp).getoId().getuId());

	}
}
