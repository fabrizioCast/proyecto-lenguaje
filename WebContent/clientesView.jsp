<%@page import="entidades.Client"%>
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
	<%
	Client client = (Client) session.getAttribute("client");
	%>


	<div
		class="container min-vh-100 d-flex justify-content-center align-items-center">
		<div class="col-6">
			<h3>Editar Cliente</h3>
			<form action="ClientServlet" method="post">
				<input type="hidden" name="type" value="update"> <input
					type="hidden" name="txtId" value="${client.id}">
				<div class="form-group">
					<label>Nombres</label> <input class="form-control" type="text"
						value="${client.firstName}" name="txtFirstName">
				</div>
				<div class="form-group">
					<label>Apellidos</label> <input class="form-control" type="text"
						value="${client.lastName}" name="txtLastName">
				</div>
				<div class="form-group">
					<label>Email</label> <input class="form-control"
						value="${client.email}" type="text" name="txtEmail">
				</div>

				<div class="form-group">
					<label>Telefono</label> <input class="form-control"
						value="${client.phone}" type="number" name="txtPhone">
				</div>


				<br> <input type="submit" class="btn btn-primary"
					value="Editar Cliente">
				<button type="button" class="btn btn-primary"
					onclick="location.href='ClientServlet?type=list'">Regresar</button>
			</form>
		</div>
	</div>
</body>
</html>