package com.fssa.charitytrust.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.charitytrust.dao.ProductDao;
import com.fssa.charitytrust.model.Product;
import com.fssa.charitytrust.service.ProductServiceLayer;
import com.fssa.charitytrust.validator.ProductValidator;

/**
 * Servlet implementation class ContactServlet
 */
@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddProductServlet() {
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
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String productName = request.getParameter("productname");
		String productDescription = request.getParameter("productdescription");
		String imgURL = request.getParameter("productimgurl");
		String eventIdParam = request.getParameter("eventid");
		int eventId = Integer.parseInt(eventIdParam);
		ProductValidator productValidator = new ProductValidator();
		ProductDao productDao = new ProductDao();

		ProductServiceLayer productService = new ProductServiceLayer(productValidator, productDao);
		Product product = new Product(productName, productDescription, imgURL, eventId);
		PrintWriter out = response.getWriter();
		try {
			Product val = productService.findByNameProduct(productName);
			if (val.getProductName() == null) {
				boolean isadded = productService.addProduct(product);

				if (isadded) {

					out.println("<h1>Successfully added product details</h1>");
					RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/EventServlet");
					dis.include(request, response);

				} else {
					out.println("<p>" + "" + productName + "" + productDescription + "" + imgURL + "" + "</p>");
					out.println("<h1>Successfully not added product details</h1>");
				}

			} else {
				boolean isadded = productService.updateProduct(product);
				if (isadded) {

					out.println("<h1>Successfully updated product details</h1>");
					RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/EventServlet");
					dis.include(request, response);

				} else {
					out.println("<p>" + "" + productName + "" + productDescription + "" + imgURL + "" + "</p>");
					out.println("<h1>Successfully not updated product details</h1>");
				}
			}

		} catch (Exception e) {
			out.println(e.getMessage());

		}

		doGet(request, response);
	}

}
