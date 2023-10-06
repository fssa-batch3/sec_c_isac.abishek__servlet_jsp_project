package com.fssa.charitytrust.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

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
 * Servlet implementation class AddEventServlet
 */
@WebServlet("/AddEventServlet")
public class AddEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddEventServlet() {
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
		// TODO Auto-generated method stub
		String eventName = request.getParameter("EventName");
		String eventOrganizer = request.getParameter("eventOrganizer");
		String dateString = request.getParameter("eventDate");
		String pattern = "yyyy-MM-dd";
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern(pattern);
		LocalDate eventDate = LocalDate.parse(dateString, formatter);
		
		String eventDescription = request.getParameter("eventDescription");
		String eventImage = request.getParameter("EventImage");
		String eventLocation = request.getParameter("eventLocation");
		String eventContact = request.getParameter("eventContact");
		EventValidator eventValidator = new EventValidator();
		EventDao eventDao = new EventDao();
		
		EventServiceLayer eventService = new EventServiceLayer(eventValidator, eventDao);
		Event event =new Event( eventName, eventLocation,eventOrganizer,eventContact,  eventImage,eventDate,eventDescription) ;
        PrintWriter out = response.getWriter();
		try {
			Event val=eventService.findEventByName(eventName);
			if(val.getEventName()==null) {
				boolean isadded = eventService.addEvent(event);
				
				
				if(isadded) {
					
					
					out.println("<h1>Successfully added event details</h1>");
					RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/EventServlet");
					dis.include(request, response);
					
					
				}
				else {
					out.println("<h1>Successfully not added product details</h1>");
				}
				
			}
			else {
				boolean isadded=eventService.updateEvent(event);
                   if(isadded) {
					
					
					out.println("<h1>Successfully updated product details</h1>");
					RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/EventServlet");
					dis.include(request, response);
					
					
				}
				else {
					out.println("<h1>Successfully not updated product details</h1>");
				}
			}
			
			
			
		}
		catch(Exception e) {
			out.println(e.getMessage());
			
		}
		
		
		doGet(request, response);
	}

}
