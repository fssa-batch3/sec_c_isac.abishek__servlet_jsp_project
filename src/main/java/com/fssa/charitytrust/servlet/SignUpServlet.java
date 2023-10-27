package com.fssa.charitytrust.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.fssa.charitytrust.connection.ConnectionException;
import com.fssa.charitytrust.exceptions.DaoException;
import com.fssa.charitytrust.exceptions.ServiceException;
import com.fssa.charitytrust.exceptions.ValidatorInitializationException;
import com.fssa.charitytrust.model.User;
import com.fssa.charitytrust.model.UserRole;
import com.fssa.charitytrust.service.UserService;

/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		User user=new User();
		String name=request.getParameter("name");
		
		String email=request.getParameter("email");

		String password=request.getParameter("pass");
		String contact=request.getParameter("contact");
		String address=request.getParameter("address");
		UserRole role = UserRole.valueOf(request.getParameter("type"));
		
		user.setUsername(name);
		user.setEmail(email);
		user.setPassword(password);
		user.setContactNumber(contact);
		user.setAddress(address);
		user.setRole(role);
		PrintWriter out= response.getWriter();
		try {
		UserService.AddUser(user);
		response.setStatus(HttpServletResponse.SC_OK);
		out.print("Successfully Added User");
			
		} catch (Exception e) {
			out.print(e.getMessage());
			System.out.println(e.getMessage());
			
		}
		
		
	}

}
