<%@ page language="java" contentType="text/html; UTF_8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <link rel="stylesheet" href="./css/estilos.css">
        <link rel="stylesheet" href="./css/contactenos.css">
        <link rel="shortcut icon" href="img/bloqueado.ico" />
        <title>Tienda|Contactenos</title>
</head>
<body>

					<!-- BARRA DE NAVEGACION -->
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp">| Tienda |</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Inicio</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="categorias.jsp">Categorias</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="nosotros.jsp">Nosotros</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contactenos.jsp">Contacto</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Iniciar Sesión</a>
                </li>
                </ul>
            </div>
            </div>
        </nav>
        

        <!-- SECCION CONTACTO -->
        <section id="contacto" class="contacto">
            <div class="seccion-subtitulo text-center">
                <h2>|  Contacto  |</h2>
            </div>
            <div class="formulario">
                <form class="row g-3" action="regmsg" method="post">
                    <div class="col-md-4">
                    <label for="nombre" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="nombre" name="txtNombre" placeholder="Ingrese nombre" autocomplete="off" required>
                    </div>
                    <div class="col-md-4">
                    <label for="apepa" class="form-label">Apellido paterno</label>
                    <input type="text" class="form-control" id="apepa" name="txtApepa" placeholder="Ingrese apellido paterno" autocomplete="off" required>
                    </div>
                    <div class="col-md-4">
                    <label for="apema" class="form-label">Apellido materno</label>
                    <input type="text" class="form-control" id="apema" name="txtApema" placeholder="Ingrese apellido materno" autocomplete="off" required>
                    </div>
                    <div class="col-md-6">
                    <label for="email" class="form-label">Correo</label>
                    <input type="email" class="form-control" id="email" name="txtEmail" placeholder="Ingrese correo electrónico" autocomplete="off" required>
                    </div>
                    <div class="col-md-6">
                    <label for="fono" class="form-label">Teléfono</label>
                    <input type="text" class="form-control" id="fono" name="txtFono" placeholder="Ingrese teléfono" autocomplete="off" required>
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormControlTextarea1" class="form-label">Mensaje</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="txtMensaje" placeholder="Ingrese mensaje" autocomplete="off" required></textarea>
                    </div>
                    <div class="col-12">
                    <button type="submit" class="btn btn-primary btn-block">Enviar</button>
                    </div>
                    <div class="${estilo} " role="alert">${mensaje}</div>
                </form>
            </div>
        </section>



       <!-- FOOTER -->
        <footer class="d-flex align-items-center flex-column">
            <div>
                <p class="footer-texto text-center">Síguenos en nuestras <br> redes sociales</p>
                <div class="iconos-redes-sociales d-flex flex-wrap align-items-center justify-content-center">
                    <a href="https://www.facebook.com/" target="_blank" rel="noopener noreferrer">
                        <i class="bi bi-facebook"></i>
                    </a>
                    <a href="https://www.instagram.com/" target="_blank" rel="noopener noreferrer">
                        <i class="bi bi-instagram"></i>
                    </a>
                    <a href="https://twitter.com/" target="_blank" rel="noopener noreferrer">
                        <i class="bi bi-twitter"></i>
                    </a>
                    <a href="https://www.linkedin.com/" target="_blank" rel="noopener noreferrer">
                        <i class="bi bi-linkedin"></i>
                    </a>
                    <a href="https://github.com/" target="_blank" rel="noopener noreferrer">
                        <i class="bi bi-github"></i>
                    </a>
                </div>
            </div>
            <p class="copy">Copyright © 2023 CyberCloud. Todos los derechos reservados.</p>
        </footer>
        

</body>
</html>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="js/button-to-top.js"></script>


