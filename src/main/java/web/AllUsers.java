package web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.User;
import dao.UserCrud;

/**
 * Servlet implementation class AllUsers
 */
@WebServlet("/AllUsers")
public class AllUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AllUsers() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Da5let lel get mta3 all users");
		// TODO Auto-generated method stub
		String path = request.getServletPath();
		// System.out.println(path);
		// System.out.println(request.getParameter("motCle"));
		// if (path.equals("/AllUsers")) {
		String motCle = request.getParameter("motCle");
		request.setAttribute("motCle", motCle);
		UserCrud crud = new UserCrud();
		List<User> usersData = new ArrayList<User>();
		if (motCle==null) {
			usersData = crud.getAllUser();

		} else {
			usersData = crud.getUsersByMotCle(motCle);
		}
		request.setAttribute("allUsers", usersData);
		request.getRequestDispatcher("views/AllUsers.jsp").forward(request, response);
		//response.sendRedirect("views/AllUsers.jsp");


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
