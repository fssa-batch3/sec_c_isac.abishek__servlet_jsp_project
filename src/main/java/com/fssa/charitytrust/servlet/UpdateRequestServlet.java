package com.fssa.charitytrust.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

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
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProductRequestValidator productRequestValidator =new ProductRequestValidator();
		ProductRequestDao productRequestDao= new ProductRequestDao();
		ProductRequestService productRequestService = new ProductRequestService(productRequestValidator, productRequestDao);
		
		try {
			List<ProductRequest> ProductRequest= productRequestService.readRequests();
			request.setAttribute("ProductRequest", ProductRequest);
			// if user signed in it want to redirect to event page for now purpose it
			// directoing to admin page
			RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/adminViewRequest.jsp");
			dis.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String contact=request.getParameter("mobileNo");
		System.out.println(contact);
		String isactive=request.getParameter("isactive");
		long mobile=Long.parseLong(contact);
		System.out.println(mobile);
		boolean active=Boolean.parseBoolean(isactive);
		ProductRequestValidator productRequestValidator =new ProductRequestValidator();
		ProductRequestDao productRequestDao= new ProductRequestDao();
		ProductRequestService productRequestService = new ProductRequestService(productRequestValidator, productRequestDao);
		try {
			productRequestService.updateProductRequest(mobile,active);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		doGet(request, response);
	}

}
