package com.fssa.charitytrust.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.fssa.charitytrust.dao.ProductRequestDao;
import com.fssa.charitytrust.dao.UserDAO;
import com.fssa.charitytrust.model.ProductRequest;
import com.fssa.charitytrust.service.ProductRequestService;
import com.fssa.charitytrust.service.UserService;
import com.fssa.charitytrust.validator.ProductRequestValidator;

/**
 * Servlet implementation class UpdateRequestServlet
 */
@WebServlet("/UpdateRequestServlet")
public class UpdateRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateRequestServlet() {
		super();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ProductRequestValidator productRequestValidator = new ProductRequestValidator();
		ProductRequestDao productRequestDao = new ProductRequestDao();
		ProductRequestService productRequestService = new ProductRequestService(productRequestValidator,
				productRequestDao);
		PrintWriter out = response.getWriter();
		try {
			List<ProductRequest> ProductRequest = productRequestService.readRequests();

			JSONArray ProductRequestArray = new JSONArray(ProductRequest);
			response.setStatus(HttpServletResponse.SC_OK);
			out.print(ProductRequestArray.toString());
			out.flush();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String accepted = "Accepted";
		String declined = "Declined";
		String contact = request.getParameter("mobileNo");
		String isAccepted = request.getParameter("isactive");
		ProductRequestValidator productRequestValidator = new ProductRequestValidator();
		ProductRequestDao productRequestDao = new ProductRequestDao();
		UserDAO user = new UserDAO();
		UserService userService = new UserService();
		ProductRequestService productRequestService = new ProductRequestService(productRequestValidator,
				productRequestDao);
		try {
			if (isAccepted.equalsIgnoreCase(accepted)) {
				if (userService.checkMobileAvailable(contact)) {
					response.getWriter().write("success");
					productRequestService.updateProductRequest(contact, isAccepted);

				} else {
					response.getWriter().write("failed");
				}
			} else if (isAccepted.equalsIgnoreCase(declined)) {
				if (userService.checkMobileAvailable(contact)) {
					response.getWriter().write("declined");
					productRequestService.updateProductRequest(contact, isAccepted);
				} else {
					response.getWriter().write("failed");
				}

			}
			response.setStatus(HttpServletResponse.SC_OK);

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
