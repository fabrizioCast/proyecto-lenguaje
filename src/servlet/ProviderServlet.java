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
import entidades.Product;
import entidades.Provider;
import interfaces.ProductInterface;
import interfaces.ProviderInterface;

@WebServlet("/ProviderServlet")
public class ProviderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String type = request.getParameter("type");
		System.out.print(type);

		if (type.equals("create")) {
			String name = request.getParameter("txtName");
			String email = request.getParameter("txtEmail");
			String ruc = request.getParameter("txtRuc");

			DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
			ProviderInterface dao = daoFactory.getProvider();

			Provider provider = new Provider();
			provider.setName(name);
			provider.setEmail(email);
			provider.setRuc(ruc);

			int result = dao.createProvider(provider);

			if (result == 1) {
				request.getRequestDispatcher("ProviderServlet?type=list").forward(request, response);
			} else {
				request.setAttribute("mensaje", "Error al crear el proveedor");
				request.getRequestDispatcher("ProviderServlet?type=list").forward(request, response);
			}
		} else if (type.equals("list")) {
			DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
			ProviderInterface dao = daoFactory.getProvider();

			List<Provider> data = dao.listProvider();
			request.setAttribute("data", data);

			request.getRequestDispatcher("providerList.jsp").forward(request, response);
		} else if (type.equals("update")) {
			String id = request.getParameter("txtId");
			String name = request.getParameter("txtName");
			String email = request.getParameter("txtEmail");
			String ruc = request.getParameter("txtRuc");

			DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
			ProviderInterface dao = daoFactory.getProvider();

			Provider provider = new Provider();
			provider.setId(Integer.parseInt(id));
			provider.setName(name);
			provider.setEmail(email);
			provider.setRuc(ruc);

			int result = dao.updateProvider(provider);

			if (result == 1) {
				request.getRequestDispatcher("ProviderServlet?type=list").forward(request, response);
			} else {
				request.setAttribute("mensaje", "Error al actualizar el proveedor");
				request.getRequestDispatcher("ProviderServlet?type=list").forward(request, response);
			}
		} else if (type.equals("delete")) {
			String id = request.getParameter("id");

			DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
			ProviderInterface dao = daoFactory.getProvider();

			int result = dao.deleteProvider(id);

			if (result == 1) {
				List<Provider> data = dao.listProvider();
				request.setAttribute("data", data);

				request.getRequestDispatcher("ProviderServlet?type=list").forward(request, response);
			} else {
				request.setAttribute("mensaje", "Error al eliminar el proveedor");
				request.getRequestDispatcher("ProviderServlet?type=list").forward(request, response);
			}
		} else if (type.equals("view")) {
			String id = request.getParameter("id");

			DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
			ProviderInterface dao = daoFactory.getProvider();

			Provider provider = dao.getProvider(id);

			HttpSession session = request.getSession();
			session.setAttribute("provider", provider);

			request.getRequestDispatcher("providerView.jsp").forward(request, response);
		}

	}
}