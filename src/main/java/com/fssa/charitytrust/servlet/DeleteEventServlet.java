package com.fssa.charitytrust.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.charitytrust.dao.EventDao;
import com.fssa.charitytrust.dao.ProductDao;
import com.fssa.charitytrust.service.EventService;
import com.fssa.charitytrust.service.ProductServiceLayer;
import com.fssa.charitytrust.validator.EventValidator;
import com.fssa.charitytrust.validator.ProductValidator;

/**
 * Servlet implementation class DeleteEventServlet
 */
@WebServlet("/DeleteEventServlet")
public class DeleteEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteEventServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = (String) request.getParameter("EventName");
		try {
			EventValidator eventValidator = new EventValidator();
			EventDao eventDao = new EventDao();

			EventService eventService = new EventService(eventValidator, eventDao);
			eventService.deleteEvent(name);
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
