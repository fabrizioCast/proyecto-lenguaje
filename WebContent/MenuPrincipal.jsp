<%@ page language="java" contentType="text/html; UTF_8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link rel="stylesheet" href="./css/estilos.css">
<link rel="stylesheet" href="./css/menuPrincipal.css">

<!-- Al inicar sesion o registrarse va a salir este menu principal que muestra cuadros donde el usuario que entro (puede ser trabajador
 o dueño va a poder ver su personal, clientes, productos, proveedores,etc)  -->


<body class="my-body">
	<jsp:include page="NavBar.jsp"></jsp:include>



	<br>
	<br>
	<!-- Container principal -->
	<div class="container py-5">
		<div class="d-flex align-items-center">
			<i class="fas fa-circle-info fs-3" style="color: #ffffff;"></i>
			<h3 id="titulomenu" class="m-0 ps-2">Menu Principal</h3>
			<h3>Usuario logueado: ${sessionScope.firstName}</h3>
		</div>
		<br>

		<div class="col-md-12">
			<div class="row">
				<!--Clientes-->
				<div class="col-xl-3 col-lg-6">
					<div id="card2" class="card">
						<div class="card-statistic-3 p-4">
							<div class="card-icon card-icon-large">
								<!-- Icono -->
								<i class="fas fa-users"></i>
							</div>
							<div class="mb-4">
								<h5 class="card-title fw-bold mb-0 text-center">Clientes</h5>
							</div>
							<div
								class="mb-2 d-flex align-items-center justify-content-center">
								<!-- Link -->
								<a href="ClientServlet?type=list" class="btn btn-lg btn-light px-4">Acceder
									<i class="fa fa-arrow-up"></i>
								</a>
								<!-- Cantidad -->
								<h2 class="d-flex align-items-center mx-3"
									th:text="${cantClients}"></h2>
							</div>
						</div>
					</div>
				</div>

				<!--Productos-->
				<div class="col-xl-3 col-lg-6">
					<div id="card3" class="card">
						<div class="card-statistic-3 p-4">
							<div class="card-icon card-icon-large">
								<!-- Icono -->
								<i class="fas fa-box"></i>
							</div>
							<div class="mb-4">
								<h5 class="card-title fw-bold mb-0 text-center">Productos</h5>
							</div>
							<div
								class="mb-2 d-flex align-items-center justify-content-center">
								<!-- Link -->
								<a href="ProductServlet?type=list"
									class="btn btn-lg btn-light px-4">Acceder <i
									class="fa fa-arrow-up"></i></a>
								<!-- Cantidad -->
								<h2 class="d-flex align-items-center mx-3"
									th:text="${cantProducto}"></h2>
							</div>
						</div>
					</div>
				</div>

				<!-- Proveedor -->
				<div class="col-xl-3 col-lg-6">
					<div id="card4" class="card">
						<div class="card-statistic-3 p-4">
							<div class="card-icon card-icon-large">
								<!-- Icono -->
								<i class="fas fa-truck-field"></i>
							</div>
							<div class="mb-4">
								<h5 class="card-title fw-bold mb-0 text-center">Proveedores</h5>
							</div>
							<div
								class="mb-2 d-flex align-items-center justify-content-center">
								<!-- Link -->
								<a href="ProviderServlet?type=list"
									class="btn btn-lg btn-light px-4">Acceder <i
									class="fa fa-arrow-up"></i></a>
								<!-- Cantidad -->
								<h2 class="d-flex align-items-center mx-3"
									th:text="${cantProveedor}"></h2>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="${estilo}" role="alert">${mensaje}</div>
		</div>
	</div>


</body>
</html>