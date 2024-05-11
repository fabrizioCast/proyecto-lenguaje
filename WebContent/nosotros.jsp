<%@ page language="java" contentType="text/html; UTF_8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="shortcut icon" href="img/bloqueado.ico" />
        <title>Tienda | Nosotros</title>
    </head>
    <body>
        <!-- BARRA DE NAVEGACION -->
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
            <a class="navbar-brand" href="index-login.jsp">| Tienda |</a>
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
                    <a class="nav-link" href="contactenos.jsp">Contactenos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Iniciar Sesión</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
                    	<i class="bi bi-person-fill"></i>${u.nom }
                    </a>
                    <ul class="dropdown-menu">
                     <li><a class="dropdown-item" href="actualizar.jsp">Actualizar datos</a><li/>
                     <li class="dropdown divider"><li/>
                     <li><a class="dropdown-item" href="logout">Cerrar sesión</a><li/>
                    </ul>
                </li>
                </ul>
            </div>
            </div>
        </nav>
        <!-- BOTON REGRESO ARRIBA -->
        <button type="button" class="btn btn-danger btn-floating btn-lg" id="btn-back-to-top">
            <i class="bi bi-arrow-up"></i>
        </button>
        <!-- SECCION NOSOTROS -->
        <section id="nosotros" class="nosotros">
            <div class="seccion-subtitulo text-center">
                <h1>|  Nosotros  |</h1>
            </div>
            <div class="container text-left">
                <div class="row">
                    <div class="nosotros-columna col-12 col-md-6">
                        <img src="img/nosotros1.png" class="d-block w-80" alt="imagen nosotros 1">
                    </div>
                    <div class="nosotros-columna col-12 col-md-6 texto">
                        <p class="nosotros-titulo"><b>Nuestra mision</b></p>
                        <p class="nosotros-slogan"><b>HISTORIA, MODA Y ROPA DEPORTIVA ADIDAS DESDE 1949</b></p>
                        <p>El deporte nos mantiene en forma. Te mantiene atento. Nos une. A través del deporte podemos cambiar vidas. Ya sea a través
                         	de historias de atletas inspiradores. Animándote a ponerte en marcha. Ofreciéndote artículos deportivos con las últimas tecnologías
                          	para mejorar tu rendimiento. Supera tu mejor marca personal. adidas es el hogar del corredor, del jugador de básquet, del joven
                           	futbolista y del entusiasta del fitness. Del aventurero que escapa de la ciudad los fines de semana. De la instructora de yoga que
                            enseña nuevas posturas. Las 3 Tiras se ven en el mundo de la música. En el escenario, en los festivales. Nuestra ropa deportiva para
                            mujer y para hombre te mantiene concentrado antes de que suene el silbato. Durante la carrera. Y en la línea de meta. Estamos aquí
                            para apoyar a los creadores. Mejorar su juego. Sus vidas. Y cambiar el mundo.</p>
                    </div>
                </div>
                <div class="row">
                    <div class="nosotros-columna col-12 col-md-6 texto">
                        <p class="nosotros-titulo"><b>¿Que hacemos?</b></p>
                        <p class="nosotros-slogan"><b>TU TIENDA DEPORTIVA PARA CUALQUIER DEPORTE</b></p>
                        <p>A través de nuestras colecciones eliminamos las barreras entre la moda de alta costura y el mejor rendimiento. Por ejemplo, nuestra colección de ropa deportiva
                           adidas by Stella McCartney está pensada para ofrecer un look sofisticado dentro y fuera del gimnasio. O algunas de nuestras prendas de estilo urbano adidas Originals
                           también pueden usarse como ropa deportiva. Nuestras vidas están cambiando constantemente. Cada vez son más versátiles. Y en adidas diseñamos pensando en eso.</p>
                    </div>
                    <div class="nosotros-columna col-12 col-md-6">
                        <img src="img/nosotros2.png" class="d-block w-80" alt="imagen nosotros 2">
                    </div>
                </div>
                
                
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


