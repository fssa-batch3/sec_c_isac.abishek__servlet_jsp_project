package com.fssa.charitytrust.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.charitytrust.exceptions.ServiceException;
import com.fssa.charitytrust.model.BookHospital;
import com.fssa.charitytrust.service.BookHospitalService;

/**
 * Servlet implementation class BookHospitalServlet
 */
@WebServlet("/BookHospitalServlet")
public class BookHospitalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BookHospitalServlet() {
		super();
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
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String contact = request.getParameter("contact");
		String email = request.getParameter("email");
		String hospitalName = request.getParameter("hospitalName");

		String dateString = request.getParameter("bookDate");

		// Define a DateTimeFormatter for the input format
		DateTimeFormatter inputFormatter = DateTimeFormatter.ofPattern("MM/dd/yyyy");

		// Parse the input string into a LocalDate object using the input format
		LocalDate localDate = LocalDate.parse(dateString, inputFormatter);

		// Define a DateTimeFormatter for the desired output format
		DateTimeFormatter outputFormatter = DateTimeFormatter.ofPattern("yyyy/MM/dd");

		// Format the LocalDate with the desired output format
		String formattedDate = localDate.format(outputFormatter);

		LocalDate localDat = LocalDate.parse(formattedDate, outputFormatter);

		BookHospital obj = new BookHospital(name, email, hospitalName, contact, localDat);

		try {
			BookHospitalService.addBooking(obj);
			out.println("Successfully Booked");
		} catch (ServiceException e) {

			out.println(e.getMessage());
		}

		doGet(request, response);
	}

}
