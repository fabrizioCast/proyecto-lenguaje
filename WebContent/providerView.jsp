<%@page import="entidades.Provider"%>
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
    <% Provider provider = (Provider) session.getAttribute("provider"); %>
  

	<div
		class="container min-vh-100 d-flex justify-content-center align-items-center">
		<div class="col-6">
			<h3>Editar Proveedor</h3>
			<form action="ProviderServlet" method="post">
				<input type="hidden" name="type" value="update">
				<input type="hidden" name="txtId" value="${provider.id}">
				<div class="form-group">
					<label>Razon Social</label> <input class="form-control" type="text" value="${provider.name}"
						name="txtName">
				</div>
				<div class="form-group">
					<label>Email</label> <input class="form-control" value="${provider.email}"
						type="text" name="txtEmail">
				</div>

				<div class="form-group">
					<label>Ruc</label> <input class="form-control" value="${provider.ruc}"
						type="number" name="txtRuc">
				</div>

				
				<br> <input type="submit" class="btn btn-primary"
					value="Editar Proveedor">
				<button type="button" class="btn btn-primary"
					onclick="location.href='ProviderServlet?type=list'">Regresar</button>
			</form>
		</div>
	</div>
</body>
</html>