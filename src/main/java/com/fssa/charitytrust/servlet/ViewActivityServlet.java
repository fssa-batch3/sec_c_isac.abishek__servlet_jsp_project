package com.fssa.charitytrust.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;

import com.fssa.charitytrust.connection.ConnectionException;
import com.fssa.charitytrust.dao.ProductRequestDao;
import com.fssa.charitytrust.exceptions.DaoException;
import com.fssa.charitytrust.exceptions.ServiceException;
import com.fssa.charitytrust.exceptions.ValidatorInitializationException;
import com.fssa.charitytrust.model.ProductRequest;
import com.fssa.charitytrust.service.ProductRequestService;
import com.fssa.charitytrust.validator.ProductRequestValidator;

/**
 * Servlet implementation class ViewActivityServlet
 */
@WebServlet("/ViewActivityServlet")
public class ViewActivityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewActivityServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String contact= request.getParameter("contact");
		ProductRequestDao objDAO=new ProductRequestDao();
		ProductRequestValidator validator=new  ProductRequestValidator();
	ProductRequestService obj=new ProductRequestService(validator,objDAO);
	ProductRequest requestObj= new ProductRequest();
	PrintWriter out = response.getWriter();
	List<ProductRequest> requestList= null;
	try {
		requestList=obj.findRequestByConatactNo(contact);
		HttpSession session = request.getSession(false);
		
		session.setAttribute("contact", contact);
		 JSONArray accountJSonArray = new JSONArray(requestList);
			
	       	
			out.print(accountJSonArray.toString());
			out.flush();
	} catch (ServiceException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
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
