<%@page import="entidades.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-
1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
<%-- Obtener atributos de sesión --%>
    <% Product product = (Product) session.getAttribute("product"); %>
  

	<div
		class="container min-vh-100 d-flex justify-content-center align-items-center">
		<div class="col-6">
			<h3>Editar Producto</h3>
			<form action="ProductServlet" method="post">
				<input type="hidden" name="type" value="update">
				<input type="hidden" name="txtId" value="${product.id}">
				<div class="form-group">
					<label>Nombre</label> <input class="form-control" type="text" value="${product.name}"
						name="txtName">
				</div>
				<div class="form-group">
					<label>Descripcion</label> <input class="form-control" value="${product.description}"
						type="text" name="txtDescription">
				</div>

				<div class="form-group">
					<label>Precios</label> <input class="form-control" value="${product.price}"
						type="number" name="txtPrice">
				</div>

				
				<br> <input type="submit" class="btn btn-primary"
					value="Editar Producto">
				<button type="button" class="btn btn-primary"
					onclick="location.href='ProductServlet?type=list'">Regresar</button>
			</form>
		</div>
	</div>
</body>
</html>