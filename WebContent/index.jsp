<%@ page language="java" contentType="text/html; UTF_8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<!-- pppppppppppp -->




    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <link rel="stylesheet" href="./css/estilos.css">
        <link rel="shortcut icon" href="img/bloqueado.ico" />
        <title>Tienda</title>
    </head>
    <body>
      <jsp:include page="NavBar.jsp"></jsp:include>
        <!-- BANNER	VIDEO	 -->
        
        <div class="banner">
                <video src="video/Y2meta.app-Dior Air Jordan 1 - Cinematic Sneaker Video-(1080p).mp4" autoplay muted></video>
           </div>
        
        
        
        
        
          
        <!-- BOTON REGRESO ARRIBA -->
        <button type="button" class="btn btn-danger btn-floating btn-lg" id="btn-back-to-top">
            <i class="bi bi-arrow-up"></i>
        </button>
        <!-- SECCION PRODUCTOS -->
        <section id="productos" class="productos">
            <div class="seccion-subtitulo text-center">
                <h2>|  Nuevos Modelos  |</h2>
            </div> 
            <div class="container text-left">
                <div class="row">
                    <div class="producto-columna col-12 col-md-2.4">
                        <img src="img/nuevomodelo1.jpg" class="d-block w-80" alt="">
                        <p class="producto-titulo"><b>Zapatillas De Fútbol Hombre Adidas Predator</b></p>
                        <p>Proteja las aplicaciones nativas de la nube durante todo el ciclo de vida en cualquier nube.</p>
                    </div>
                    <div class="producto-columna col-12 col-md-2.4">
                        <img src="img/nuevomodelo2.jpg" class="d-block w-80" alt="">
                        <p class="producto-titulo"><b>Zapatillas Running Adidas</b></p>
                        <p>Potencie las operaciones de seguridad con detección, investigación y respuesta basadas en la automatización.</p>
                    </div>
                    <div class="producto-columna col-12 col-md-2.4">
                        <img src="img/nuevomodelo3.jpg" class="d-block w-80" alt="">
                        <p class="producto-titulo"><b>Zapatillas Duramo RC</b></p>
                        <p>Aplique las innovaciones del sector en toda la pila de seguridad de la red.</p>
                    </div>
                    <div class="producto-columna col-12 col-md-2.4">
                        <img src="img/nuevomodelo4.jpg" class="d-block w-80" alt="">
                        <p class="producto-titulo"><b>Zapatillas Urbanas Niña Graviton Jr</b></p>
                        <p>Cone aplicación.</p>
                    </div>
                    <div class="producto-columna col-12 col-md-2.4">
                        <img src="img/nuevomodelo5.jpg" class="d-block w-80" alt="">
                        <p class="producto-titulo"><b>Zapatillas Urbanas Slipstream Bball Jr</b></p>
                        <p>Apóyese en asesores de confianza para defenderse a las ciberamenazas.</p>
                    </div>
                    <div class="producto-columna col-12 col-md-2.4">
                        <img src="img/nuevomodelo6.jpg" class="d-block w-80" alt="">
                        <p class="producto-titulo"><b>Zapatillas Running Adidas</b></p>
                        <p>Potencie las operaciones de seguridad con detección, investigación y respuesta basadas en la automatización.</p>
                    </div>
                    <div class="producto-columna col-12 col-md-2.4">
                        <img src="img/nuevomodelo7.jpg" class="d-block w-80" alt="">
                        <p class="producto-titulo"><b>Zapatillas Running Fila</b></p>
                        <p>Potencie las operaciones de seguridad con detección, investigación y respuesta basadas en la automatización.</p>
                    </div>
                    <div class="producto-columna col-12 col-md-2.4">
                        <img src="img/nuevomodelo8.jpg" class="d-block w-80" alt="">
                        <p class="producto-titulo"><b>Zapatillas Running Adidas</b></p>
                        <p>Potencie las operaciones de seguridad con detección, investigación y respuesta basadas en la automatización.</p>
                    </div>
                    <div class="producto-columna col-12 col-md-2.4">
                        <img src="img/nuevomodelo9.jpg" class="d-block w-80" alt="">
                        <p class="producto-titulo"><b>Zapatillas Urbanas Originals Samba </b></p>
                        <p>Potencie el estilo que llevas dentro</p>
                    </div>
                </div>
            </div>
        </section>
        
        
        
        <!-- SECCION carrusel -->
        

        <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div id="carousel-1" class="carousel-item active" data-bs-interval="5000" style="max-height: 650px;">
                    <div>
                        <img src="img/promo5.jpg" class="d-block w-100" alt="imagen banner">
                    </div>
                    <div class="carousel-caption">
                        <h3>Tu estilo, tus reglas
                            <br>
                             Encuentra las zapatillas que te inspiren
                        </h3>
                    </div>
                </div>
                <div id="carousel-2" class="carousel-item" data-bs-interval="5000" style="max-height: 650px;">
                    <img src="img/banner2.jpg" class="d-block w-100" alt="imagen banner">
                    <div class="carousel-caption">
                        <h3>Pisa con estilo
                            <br>
                        </h3>
                        <p> Zapatillas que hablan por ti  </p>
                    </div>
                </div>
                <div id="carousel-3" class="carousel-item" data-bs-interval="5000" style="max-height: 650px;">
                    <img src="img/banner3.jpg" class="d-block w-100" alt="imagen banner">
                    <div class="carousel-caption">
                        <h3>Encuentra la combinación perfecta</h3>
                    </div>
                </div>
                
                  <div id="carousel-4" class="carousel-item" data-bs-interval="5000" style="max-height: 650px;">
                    <img src="img/banner4.jpg" class="d-block w-100" alt="imagen banner">
                    <div class="carousel-caption">
                        <h3>Encuentra las zapatillas que te hacen sentir único </h3>                    
               			</div> 
              		</div>  
            	
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
            </button> 
            </div>
        </div><br>
       
        
        <!-- BOTON REGRESO ARRIBA -->
        <button type="button" class="btn btn-danger btn-floating btn-lg" id="btn-back-to-top">
            <i class="bi bi-arrow-up"></i>
        </button>

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

