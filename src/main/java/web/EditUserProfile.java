package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.User;
import dao.UserCrud;

/**
 * Servlet implementation class EditUserProfile
 */
@WebServlet("/EditUserProfile")
public class EditUserProfile extends HttpServlet {
	int userID;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditUserProfile() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//
		String paramID = request.getParameter("id");
		UserCrud userData = new UserCrud();
		String paramDeleteById = request.getParameter("deleteById");
		request.setAttribute("POST_ACTION", "EditUserProfile");
		if (paramDeleteById != null) {
			int id = Integer.parseInt(paramDeleteById);
			userData.deleteUserById(id);
			List<User> usersList = userData.getAllUser();
			request.setAttribute("allUsers", usersList);
			request.getRequestDispatcher("views/AllUsers.jsp").forward(request, response);
		}
		else if (paramID == null) {
			// get user by session
			userID = -1;
			User user = (User) request.getSession().getAttribute("user");
//			System.out.println(user.getId()+"");
			User data = userData.getUserById(user.getId());
			request.setAttribute("NOM", data.getNom());
			request.setAttribute("PRENOM", data.getPrenom());
			request.setAttribute("LOGIN", data.getLogin());
			request.setAttribute("PWD", data.getPwd());
			request.setAttribute("ERROR", false);
			request.setAttribute("USER", data);
			request.getRequestDispatcher("views/EditUserProfile.jsp").forward(request, response);
		}
		// get user by id
		else {
			userID = Integer.parseInt(paramID);
			User user = userData.getUserById(userID);
			request.setAttribute("NOM", user.getNom());
			request.setAttribute("PRENOM", user.getPrenom());
			request.setAttribute("LOGIN", user.getLogin());
			request.setAttribute("PWD", user.getPwd());
			request.setAttribute("ERROR", false);
			request.setAttribute("USER", user);
			request.getRequestDispatcher("views/EditUserProfile.jsp").forward(request, response);
		}

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// String paramID = (String) request.getAttribute("userId");
		int selectedUserId;
		if (userID > 0) {
			selectedUserId = userID;
		} else {
			User user = (User) request.getSession().getAttribute("user");
			selectedUserId = user.getId();
		}
		String newLastName = request.getParameter("nom");
		String newFirstName = request.getParameter("prenom");
		String newLogin = request.getParameter("login");
		String newPwd = request.getParameter("pwd");
		String newConfirmedPwd = request.getParameter("confirmedPwd");

		if (newPwd.equals(newConfirmedPwd)) {
			UserCrud userCrud = new UserCrud();
			User userupdated = (User) userCrud.editUserData(newLastName, newFirstName, newLogin, newPwd,
					selectedUserId);
			response.sendRedirect("/TP03/accueil");

		} else {
			// send Error message
			request.setAttribute("ERROR", true);
			request.setAttribute("NOM", newLastName);
			request.setAttribute("PRENOM", newFirstName);
			request.setAttribute("LOGIN", newLogin);
			request.getRequestDispatcher("views/EditUserProfile.jsp").forward(request, response);

		}
	}

}
