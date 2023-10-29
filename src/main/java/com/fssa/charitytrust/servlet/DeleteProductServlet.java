package com.fssa.charitytrust.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.charitytrust.dao.ProductDao;
import com.fssa.charitytrust.service.ProductServiceLayer;
import com.fssa.charitytrust.validator.ProductValidator;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/DeleteProductServlet")
public class DeleteProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteProductServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String name = (String) request.getParameter("name");
		try {
			ProductValidator productValidator = new ProductValidator();
			ProductDao productDao = new ProductDao();

			ProductServiceLayer productService = new ProductServiceLayer(productValidator, productDao);
			productService.deleteProduct(name, id);
			RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/EventServlet");
			dis.forward(request, response);

		} catch (Exception e) {

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
