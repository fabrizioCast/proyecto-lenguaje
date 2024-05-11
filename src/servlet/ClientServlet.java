package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DAOFactory;
import entidades.Client;
import interfaces.ClientInterface;

@WebServlet("/ClientServlet")
public class ClientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String type = request.getParameter("type");
		System.out.print(type);
		if (type.equals("create")) {
			String firstName = request.getParameter("txtFirstName");
			String lastName = request.getParameter("txtLastName");
			String email = request.getParameter("txtEmail");
			String phone = request.getParameter("txtPhone");

			DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
			ClientInterface dao = daoFactory.getClient();

			Client client = new Client();
			client.setFirstName(firstName);
			client.setLastName(lastName);
			client.setEmail(email);
			client.setPhone(phone);

			int result = dao.createClient(client);

			if (result == 1) {
				request.getRequestDispatcher("ClientServlet?type=list").forward(request, response);
			} else {
				request.setAttribute("mensaje", "Error al crear el cliente");
				request.getRequestDispatcher("ClientServlet?type=list").forward(request, response);
			}
		} else if (type.equals("list")) {
			DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
			ClientInterface dao = daoFactory.getClient();

			List<Client> data = dao.listClient();
			request.setAttribute("data", data);
			
			

			request.getRequestDispatcher("clientesList.jsp").forward(request, response);
		} else if (type.equals("update")) {
			String id = request.getParameter("txtId");
			String firstName = request.getParameter("txtFirstName");
			String lastName = request.getParameter("txtLastName");
			String email = request.getParameter("txtEmail");
			String phone = request.getParameter("txtPhone");

			DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
			ClientInterface dao = daoFactory.getClient();

			Client client = new Client();
			client.setId(Integer.parseInt(id));
			client.setFirstName(firstName);
			client.setLastName(lastName);
			client.setEmail(email);
			client.setPhone(phone);

			int result = dao.updateClient(client);

			if (result == 1) {
				request.getRequestDispatcher("ClientServlet?type=list").forward(request, response);
			} else {
				request.setAttribute("mensaje", "Error al actualizar el cliente");
				request.getRequestDispatcher("ClientServlet?type=list").forward(request, response);
			}
		} else if (type.equals("delete")) {
			String id = request.getParameter("id");

			DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);

			ClientInterface dao = daoFactory.getClient();

			int result = dao.deleteClient(id);

			if (result == 1) {
				request.getRequestDispatcher("ClientServlet?type=list").forward(request, response);
			} else {
				request.setAttribute("mensaje", "Error al eliminar el cliente");
				request.getRequestDispatcher("ClientServlet?type=list").forward(request, response);
			}

		} else if (type.equals("edit")) {
			String id = request.getParameter("id");

			DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
			ClientInterface dao = daoFactory.getClient();

			Client client = dao.getClient(id);

			request.setAttribute("client", client);

			request.getRequestDispatcher("ClientServlet?type=list").forward(request, response);
		} else if (type.equals("view")) {
			String id = request.getParameter("id");

			DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
			ClientInterface dao = daoFactory.getClient();

			Client client = dao.getClient(id);

			HttpSession session = request.getSession();
			session.setAttribute("client", client);

			request.getRequestDispatcher("clientesView.jsp").forward(request, response);
		}
	}

}
