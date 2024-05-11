package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DAOFactory;
import entidades.User;
import interfaces.AuthInterface;
import util.Regex;

@WebServlet("/AuthServlet")
public class AuthServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String type = request.getParameter("type");
		System.out.print(type);
		if (type.equals("login")) {
			String email = request.getParameter("txtEmail");
			String clave = request.getParameter("txtPassword");

			DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
			AuthInterface dao = daoFactory.getAuth();

			User user = dao.verify(email, clave);

			if (user != null) {
				HttpSession session = request.getSession(true);
				String firstName = user.getFirstName();
				String lastName = user.getLastName();
				String emailUser = user.getEmail();
				
				System.out.print(firstName);

				session.setAttribute("firstName", firstName);
				session.setAttribute("lastName", lastName);
				session.setAttribute("email", emailUser);
	
				request.getRequestDispatcher("MenuPrincipal.jsp").forward(request, response);
			} else {
				request.setAttribute("mensaje", "Error en usuario y/clave");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		} else if (type.equals("logout")) {
			HttpSession session = request.getSession(true);
			session.removeAttribute("nombre");
			session.invalidate();

			response.sendRedirect("login.jsp");
		} else if (type.equals("register")) {
			String email = request.getParameter("txtEmail");
			String clave = request.getParameter("txtPassword");
			String firstName = request.getParameter("txtFirstName");
			String lastName = request.getParameter("txtLastName");
			String phone = request.getParameter("txtPhone");
			
			if(!Regex.validateEmail(email)) {
				request.setAttribute("mensaje", "Email invalido");
				request.getRequestDispatcher("registro.jsp").forward(request, response);
				return;
			}
			
			if(!Regex.validatePhone(phone)) {
				request.setAttribute("mensaje", "Celular invalido");
				request.getRequestDispatcher("registro.jsp").forward(request, response);
				return;
			}
			
			DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
			AuthInterface dao = daoFactory.getAuth();
			
			User newUser = new User();
			newUser.setEmail(email);
			newUser.setPassword(clave);
			newUser.setFirstName(firstName);
			newUser.setLastName(lastName);
			newUser.setPhone(phone);

			int ok = dao.createUser(newUser);
			
			if(ok == 1) {
				request.getRequestDispatcher("login.jsp").forward(request, response);
			} else {
				request.setAttribute("mensaje", "Ocurrio un error");
				request.getRequestDispatcher("registro.jsp").forward(request, response);
			}
			
			
		}

	}

}
