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
 * Servlet implementation class ProductServlet
 */
@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		String name=(String)request.getParameter("name");
		try {
			ProductValidator productValidator = new ProductValidator();
			ProductDao productDao = new ProductDao();

			ProductServiceLayer productService = new ProductServiceLayer(productValidator, productDao);
			
			List<ArrayList<String>> productList = productService.readProductBySpecificEvent(id);

			
			request.setAttribute("productList", productList);
			
			
			
		}catch (Exception e) {
			
		}
		
		String event = (String) request.getParameter("event");
		String eventName= (String) request.getParameter("EventName");
		System.out.println("event id get: "+event);
		
		if (event == null) {
			// if user signed in it want to redirect to event page for now purpose it
			// directoing to admin page
			RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/adminProduct.jsp");
			dis.forward(request, response);
			
		}else {
			RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/product.jsp");
			dis.forward(request, response);
		}
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
