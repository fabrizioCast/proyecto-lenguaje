<%@ page language="java" contentType="text/html; UTF_8" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <!-- pppppp -->

    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" />
    <link rel="stylesheet" href="./css/estilos.css" />
    <link rel="stylesheet" href="./css/login.css" />
    <link rel="shortcut icon" href="img/bloqueado.ico" />
    <title>Tienda | Login</title>
  </head>
  <body>
    <div class="background-login"></div>
    <!-- BARRA DE NAVEGACION -->
    <header>
      <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
          <a class="navbar-brand" href="index.jsp">| Tienda |</a>
          <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarNav"
            aria-controls="navbarNav"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
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
                <a class="nav-link" href="contactenos.jsp">Contactenos</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>
    <!-- FORMULARIO DE LOGUEO -->
    <div class="contenedor-form login">
      <div class="content">
        <div class="text-sci">
          <h2>Bienvenido(a)!<br /><span>Ingresa a nuestro sitio web.</span></h2>
          <p>Tambien puedes seguirnos en nuestras redes sociales para enterarte sobre nuevos ingresos y novedades.</p>
          <div class="iconos-redes-sociales d-flex flex-wrap align-items-center justify-content-start">
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
      </div>
      <div class="logreg-box">
        <div class="form-box">
          <form action="AuthServlet" method="post">
            <!-- Aqui en el action va el nombre del servlet que hemos creado -->
            <h2>Iniciar session</h2>
            <div class="input-box">
              <span class="icon"><i class="bi bi-envelope"></i></span>
              <input type="text" name="txtEmail" autocomplete="off" required />
              <label>Correo</label>
            </div>
            <div class="input-box">
              <span class="icon"><i class="bi bi-lock-fill"></i></span>
              <input type="password" name="txtPassword" autocomplete="off" required />
              <label>Contraseña</label>
            </div>
            <input type="hidden" name="type" value="login" />
            <button type="submit" class="boton">Iniciar session</button>
            <div class="login-register">
              <p>¿No estas registrado? <a href="registro.jsp" class="register-link">Registrate</a></p>
            </div>
            <div class="${estilo}" role="alert">${mensaje}</div>
          </form>
        </div>
      </div>
    </div>

    <!-- FOOTER -->
    <footer class="d-flex align-items-center flex-column">
      <div>
        <p class="footer-texto text-center">
          Síguenos en nuestras <br />
          redes sociales
        </p>
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
      <p class="copy">Copyright 2023 CyberCloud. Todos los derechos reservados.</p>
    </footer>
  </body>
</html>
<script
  src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
  crossorigin="anonymous"
></script>
<script src="js/button-to-top.js"></script>
