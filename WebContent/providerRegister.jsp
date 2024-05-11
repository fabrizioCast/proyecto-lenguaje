<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crear Proveedor</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-
1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
	<div
		class="container min-vh-100 d-flex justify-content-center align-items-center">
		<div class="col-6">
			<h3>Registrar Proveedor</h3>
			<form action="ProviderServlet" method="post">
				<input type="hidden" name="type" value="create">
				<div class="form-group">
					<label>Razon Social</label> <input class="form-control" type="text"
						required name="txtName">
				</div>
				<div class="form-group">
					<label>Correo</label> <input class="form-control" type="text"
						required name="txtEmail">
				</div>

				<div class="form-group">
					<label>Ruc</label> <input class="form-control" type="number"
						required name="txtRuc">
				</div>


				<br> <input type="submit" class="btn btn-primary"
					value="Crear proveedor">
				<button type="button" class="btn btn-primary"
					onclick="location.href='ProviderServlet?type=list'">Regresar</button>
			</form>
		</div>
	</div>
</body>
</html>