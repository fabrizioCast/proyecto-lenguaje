<%@ page language="java" contentType="text/html; UTF_8"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="entidades.Client"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" />
<title>Insert title here</title>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />
<link rel="stylesheet" href="./css/estilos.css" />
<link rel="stylesheet" href="./css/menuPrincipal.css" />

<body class="my-body">
	<jsp:include page="NavBar.jsp"></jsp:include>

	<br />
	<br />

	<!-- Container principal -->
	<div class="container">
	<div class="${estilo}" role="alert">${mensaje}</div>
	
		<div class="row">
			<h3>Usuario logueado: ${sessionScope.firstName}
				${sessionScope.lastName} - ${sessionScope.email}</h3>
			<div class="col-12 text-center">
				<h3>Clientes</h3>
			</div>
			<div class="col-12">
				<button type="button" class="btn btn-primary"
					onclick="window.location='clientesRegister.jsp'">Registrar</button>
			</div>
			<br>
			<div class="col-12">
				<table class="table">
					<thead>
						<tr>
							<th>Id</th>
							<th>Nombres</th>
							<th>Apellidos</th>
							<th>Celular</th>
							<th>Correo</th>
							<th>Acciones</th>
						</tr>
					</thead>
					<tbody>
						<%
						List<Client> listClients = (List<Client>) request.getAttribute("data");
						if (listClients != null) {
							for (Client item : listClients) {
						%>
						<tr>
							<td><%=item.getId()%></td>
							<td><%=item.getFirstName()%></td>
							<td><%=item.getLastName()%></td>
							<td><%=item.getPhone()%></td>
							<td><%=item.getEmail()%></td>
							<td><a href="ClientServlet?type=delete&id=<%=item.getId()%>">
									Eliminar </a> <a
								href="ClientServlet?type=view&id=<%=item.getId()%>"> Editar
							</a></td>
						</tr>
						<%
						}
						}
						%>
					</tbody>
				</table>
			</div>
		</div>

		<div class="row"></div>
	</div>
</body>
</html>
