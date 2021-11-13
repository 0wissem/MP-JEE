package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserCrud;
import dao.User;

@WebServlet("/addUser")
public class AddUser extends HttpServlet {
	UserCrud crud = new UserCrud();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("POST_ACTION", "addUser");
		request.getRequestDispatcher("views/EditUserProfile.jsp").forward(request, response);


	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//req.setAttribute("POST_ACTION", "addUser");
		String newLastName = req.getParameter("nom");
		String newFirstName = req.getParameter("prenom");
		String newLogin = req.getParameter("login");
		String pwd = req.getParameter("pwd").toString();
		String newConfirmedPwd = req.getParameter("confirmedPwd").toString();
		
		if (pwd.equals(newConfirmedPwd)) {
			System.out.println("hetettete");
			User u = new User(newFirstName, newLastName, newLogin, pwd);
			crud.addUser(u);
			resp.sendRedirect("/TP03/accueil");

		} else {
			
			// send Error message
			req.setAttribute("ERROR", true);
			req.setAttribute("NOM", newLastName);
			req.setAttribute("PRENOM", newFirstName);
			req.setAttribute("LOGIN", newLogin);
			req.getRequestDispatcher("views/EditUserProfile.jsp").forward(req, resp);

		}



	}
}