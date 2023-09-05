package com.fssa.charitytrust.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.charitytrust.dao.EventDao;
import com.fssa.charitytrust.model.Event;
import com.fssa.charitytrust.service.EventServiceLayer;
import com.fssa.charitytrust.validator.EventValidator;

/**
 * Servlet implementation class EventServlet
 */
@WebServlet("/EventServlet")
public class EventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		try {
			EventValidator eventValidator = new EventValidator();
			EventDao eventDao = EventDao.getEventDao();

			EventServiceLayer eventService = new EventServiceLayer(eventValidator, eventDao);

			List<Event> eventList = eventService.viewEvent();

			request.setAttribute("eventList", eventList);
			

			

		} catch (Exception e) {

		}
		String event = (String) request.getParameter("event");
		System.out.println("event id get: "+event);
		
		if (event == null) {
			// if user signed in it want to redirect to event page for now purpose it
			// directoing to admin page
			RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/adminEvent.jsp");
			dis.forward(request, response);
			
		}else {
			RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/event.jsp");
			dis.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		
		
		
	}

}
