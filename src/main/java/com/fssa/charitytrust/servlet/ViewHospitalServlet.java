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

import com.fssa.charitytrust.dao.HospitalDao;
import com.fssa.charitytrust.exceptions.ServiceException;
import com.fssa.charitytrust.model.Event;
import com.fssa.charitytrust.model.Hospital;
import com.fssa.charitytrust.service.HospitalServiceLayer;
import com.fssa.charitytrust.validator.HospitalValidator;

/**
 * Servlet implementation class ViewHsopitalServlet
 */
@WebServlet("/ViewHospitalServlet")
public class ViewHospitalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ViewHospitalServlet() {
		super();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HospitalValidator hospitalValidator = new HospitalValidator();
		HospitalDao hospitalDao = new HospitalDao();

		HospitalServiceLayer hospitalServiceLayer = new HospitalServiceLayer(hospitalValidator, hospitalDao);
		try {
			List<Hospital> hospitalList = hospitalServiceLayer.ReadHospital();
			JSONArray accountsJSonArray = new JSONArray(hospitalList);

			out.println(accountsJSonArray.toString());
		} catch (ServiceException e) {

			e.printStackTrace();
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
