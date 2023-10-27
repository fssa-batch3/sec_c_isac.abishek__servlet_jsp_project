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

import org.json.JSONArray;

import com.fssa.charitytrust.dao.EventDao;
import com.fssa.charitytrust.model.Event;
import com.fssa.charitytrust.service.EventService;
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

			EventService eventService = new EventService(eventValidator, eventDao);

			List<Event> eventList = eventService.viewEvent();

			request.setAttribute("eventList", eventList);
			JSONArray accountsJSonArray = new JSONArray(eventList);
			
        	
			out.println(accountsJSonArray.toString());
//			out.flush();
		
			

		} catch (Exception e) {
			out.println(e.getMessage());
		}
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
