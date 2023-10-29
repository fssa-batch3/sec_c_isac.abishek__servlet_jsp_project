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

import com.fssa.charitytrust.connection.ConnectionException;
import com.fssa.charitytrust.exceptions.DaoException;
import com.fssa.charitytrust.exceptions.ServiceException;
import com.fssa.charitytrust.exceptions.ValidatorInitializationException;
import com.fssa.charitytrust.model.User;
import com.fssa.charitytrust.service.UserService;

/**
 * Servlet implementation class EditProfileServlet
 */
@WebServlet("/EditProfileServlet")
public class EditProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditProfileServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String mail = email.trim();
		String mobile = request.getParameter("mobile");
		String address = request.getParameter("address");
		boolean accessblity = Boolean.parseBoolean(request.getParameter("accessblity"));

		User user = new User();
		user.setEmail(mail);
		user.setUsername(name);
		user.setContactNumber(mobile);
		user.setAddress(address);
		user.setAccessblity(accessblity);
		PrintWriter out = response.getWriter();
		try {
			UserService.updateUser(user);
			UserService.setAccessblity(mail, accessblity);
			List<User> userList = UserService.getUserbyEmail(mail);
			JSONArray accountJSonArray = new JSONArray(userList);

			out.print(accountJSonArray.toString());
			out.flush();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
