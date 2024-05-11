
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp">| Tienda |</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="index.jsp">Inicio</a></li>
					<li class="nav-item"><a class="nav-link" href="categorias.jsp">Categorias</a></li>
					<li class="nav-item"><a class="nav-link" href="nosotros.jsp">Nosotros</a></li>
					<li class="nav-item"><a class="nav-link"
						href="contactenos.jsp">Contactenos</a></li>



					<c:if test="${not empty sessionScope.email}">
						<li class="nav-item"><a class="nav-link"
							href="MenuPrincipal.jsp">Menu Principal</a></li>
						<li class="nav-item"><a class="nav-link"
							href="AuthServlet?type=logout">Cerrar Sesion</a></li>
					</c:if>

					<c:if test="${empty sessionScope.email}">
						<li class="nav-item"><a class="nav-link" href="login.jsp">Iniciar
								Sesión</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</nav>
</header>