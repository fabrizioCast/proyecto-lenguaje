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
import interfaces.ProductInterface;

@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String type = request.getParameter("type");
		System.out.print(type);

		if (type.equals("create")) {
			String name = request.getParameter("txtName");
			String description = request.getParameter("txtDescription");
			String price = request.getParameter("txtPrice");

			DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
			ProductInterface dao = daoFactory.getProduct();

			Product product = new Product();
			product.setName(name);
			product.setDescription(description);
			product.setPrice(Integer.parseInt(price));
			product.setImage("");

			int result = dao.createProduct(product);

			if (result == 1) {
				request.getRequestDispatcher("ProductServlet?type=list").forward(request, response);
			} else {
				request.setAttribute("mensaje", "Error al crear el producto");
				request.getRequestDispatcher("ProductServlet?type=list").forward(request, response);
			}
		} else if (type.equals("list")) {
			DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
			ProductInterface dao = daoFactory.getProduct();

			List<Product> data = dao.listProduct();
			request.setAttribute("data", data);

			request.getRequestDispatcher("productosList.jsp").forward(request, response);
		} else if (type.equals("update")) {
			String id = request.getParameter("txtId");
			String name = request.getParameter("txtName");
			String description = request.getParameter("txtDescription");
			String price = request.getParameter("txtPrice");

			DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
			ProductInterface dao = daoFactory.getProduct();

			Product product = new Product();
			product.setId(Integer.parseInt(id));
			product.setName(name);
			product.setDescription(description);
			product.setPrice(Float.parseFloat(price));

			int result = dao.updateProduct(product);

			if (result == 1) {
				request.getRequestDispatcher("ProductServlet?type=list").forward(request, response);
			} else {
				request.setAttribute("mensaje", "Error al actualizar el producto");
				request.getRequestDispatcher("ProductServlet?type=list").forward(request, response);
			}
		} else if (type.equals("delete")) {
			String id = request.getParameter("id");

			DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
			ProductInterface dao = daoFactory.getProduct();

			int result = dao.deleteProduct(id);

			if (result == 1) {
				List<Product> data = dao.listProduct();
				request.setAttribute("data", data);

				
				request.getRequestDispatcher("ProductServlet?type=list").forward(request, response);
			} else {
				request.setAttribute("mensaje", "Error al eliminar el producto");
				request.getRequestDispatcher("ProductServlet?type=list").forward(request, response);
			}
		} else if (type.equals("view")) {
			String id = request.getParameter("id");

			DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
			ProductInterface dao = daoFactory.getProduct();

			Product product = dao.getProduct(id);

			HttpSession session = request.getSession();
			session.setAttribute("product", product);

			request.getRequestDispatcher("productosView.jsp").forward(request, response);
		}

	}
}