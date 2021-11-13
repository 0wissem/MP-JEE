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

@WebServlet( "/accueil" )
public class Accueil extends HttpServlet {
	UserCrud list;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getServletPath().equals("/accueil")) {
				request.getRequestDispatcher("/views/accueil.jsp").forward(request, response);
				//response.sendRedirect("views/accueil.jsp");
				HttpSession session = request.getSession();
				session.setAttribute("numberOfUsers",list.getNumberOfUsers()+"" );
			}
		
	

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
			String login = req.getParameter("login").toString();
			String pwd = req.getParameter("password").toString();
			UserCrud findUser = new UserCrud();
			User userData = (User) findUser.getUserData(login, pwd);
			if (userData.getNom() != null) {
				// open session and redirect to home
				// open session
				HttpSession session = req.getSession();
				session.setAttribute("user", userData);
				session.setAttribute("nom", userData.getNom());
				session.setAttribute("prenom", userData.getPrenom());
				// redirect to home page
				resp.sendRedirect("views/accueil.jsp");
			}
			
			// inform with error message and stay at login

		

	}
}