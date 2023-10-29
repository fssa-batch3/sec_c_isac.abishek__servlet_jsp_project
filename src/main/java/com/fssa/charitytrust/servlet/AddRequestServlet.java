package com.fssa.charitytrust.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.charitytrust.connection.ConnectionException;
import com.fssa.charitytrust.dao.ProductRequestDao;
import com.fssa.charitytrust.exceptions.DaoException;
import com.fssa.charitytrust.exceptions.ValidatorInitializationException;
import com.fssa.charitytrust.model.ProductRequest;
import com.fssa.charitytrust.service.ProductRequestService;
import com.fssa.charitytrust.validator.ProductRequestValidator;

/**
 * Servlet implementation class AddRequestServlet
 */
@WebServlet("/AddRequestServlet")
public class AddRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddRequestServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String eventName = request.getParameter("place");
		String product = request.getParameter("product");
		String contact = request.getParameter("contactNumber");

		ProductRequest productRequest = new ProductRequest(eventName, product, contact);
		ProductRequestValidator productRequestValidator = new ProductRequestValidator();
		ProductRequestDao productRequestDao = new ProductRequestDao();
		ProductRequestService productRequestService = new ProductRequestService(productRequestValidator,
				productRequestDao);
		PrintWriter out = response.getWriter();
		try {

			productRequestService.addproductRequest(productRequest);
			response.setStatus(HttpServletResponse.SC_OK);

			out.println("Successfully added request");

		} catch (Exception e) {
			System.out.println(e.getMessage());
			out.println(e.getMessage());

		}

		doGet(request, response);
	}

}
