package com.jayasadha.supplier_financial_management;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class supplierervlet
 */
@WebServlet("/supplierervlet")
public class supplierervlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private supplierdb supplier_db;

	public void init() {
		supplier_db = new supplierdb ();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/new":
				showNewForm(request, response);
				break;
			case "/insert1":
				insertUser(request, response);
				break;
			case "/delete":
				deleteUser(request, response);
				break;
			case "/editsuplier":
				showEditForm(request, response);
				break;
			case "/update1":
				updateUser(request, response);
				break;
			default:
				listUser(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}
	// list all useres
	
	private void listUser(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<supplier> listUser = supplier_db.selectAllUsers();
		request.setAttribute("listUser", listUser);
		RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");
		dispatcher.forward(request, response);
	}

	//show new for,
	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
		dispatcher.forward(request, response);
	}
	
	//show update form

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		supplier existingUser = supplier_db.selectUser(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
		request.setAttribute("user", existingUser);
		dispatcher.forward(request, response);

	}
	
	//insert supplier servlet	
		private void insertUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		
		String name = request.getParameter("name");
		String contact = request.getParameter("con");
		String mail = request.getParameter("mail");
		String a1 = request.getParameter("add1");
		String a2 = request.getParameter("add2");
		supplier newUser = new supplier(name,contact,mail,a1,a2);
		supplier_db.insertUser(newUser);
		response.sendRedirect("list");
		
	}

		//Update supplier servlet
	private void updateUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String contact = request.getParameter("con");
		String mail = request.getParameter("mail");
		String a1 = request.getParameter("add1");
		String a2 = request.getParameter("add2");

		supplier suser = new supplier(id, name,contact,mail,a1,a2);
		supplier_db.updateUser(suser);
		response.sendRedirect("list");
	}
	
	//Delete supplier servlet

	private void deleteUser(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		supplier_db.deleteUser(id);
		response.sendRedirect("list");

	
	}

}
