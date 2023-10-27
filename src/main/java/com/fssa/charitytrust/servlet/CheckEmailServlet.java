package com.fssa.charitytrust.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.charitytrust.dao.UserDAO;
import com.fssa.charitytrust.exceptions.DaoException;
import com.fssa.charitytrust.exceptions.ServiceException;
import com.fssa.charitytrust.exceptions.UserValidatorError;
import com.fssa.charitytrust.service.UserService;

/**
 * Servlet implementation class CheckEmailServlet
 */
@WebServlet("/CheckEmailServlet")
public class CheckEmailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckEmailServlet() {
		super();
		// TODO Auto-generated constructor stub
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
		UserService service = new UserService();
		String email = (String) request.getParameter("email");
		String pass = (String) request.getParameter("pass");
	
		HttpSession session = request.getSession();

		PrintWriter out = response.getWriter();

		try {
		        boolean active= service.checkMailAndPassword(email, pass);
		        System.out.println(active);
		        if(active) {
		        	session.setAttribute("email", email);
					response.setStatus(HttpServletResponse.SC_OK);
					out.print("Successfully LoggedIn");
		        }
		        else {
		        	out.print(UserValidatorError.UNABLE_TO_LOGIN);
		        }
				
		
		} catch (ServiceException e) {
			System.out.println(e.getMessage());
			out.print(UserValidatorError.UNABLE_TO_LOGIN);
		}
		doGet(request, response);
	}

}
