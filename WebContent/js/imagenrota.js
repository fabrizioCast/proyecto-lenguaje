// LAS IMAGENES ROTAN
function gira(e){
  e.style.transform="rotate(360deg)";
  e.style.transition="all 1s";
}

function retorna(e){
  e.style.transform="rotateY(0)";
  e.style.transition="all 1s";
}
for(var i=0; i<document.getElementsByClassName("col").length; i++)
{
    document.getElementsByClassName("col")[i].setAttribute("onmouseover", "gira(this)");
    document.getElementsByClassName("col")[i].setAttribute("onmouseout", "retorna(this)");
  }
  
  
// MINI CARRUSEL DE INDEX
// Iniciar el carrusel al cargar la página
		/*	document.addEventListener('DOMContentLoaded', function() {
			  var myCarousel = document.getElementById('carouselExampleControls');
			  var carousel = new bootstrap.Carousel(myCarousel, {
			    interval: 2000, // Cambia el intervalo de cambio de imágenes (en milisegundos)
			    wrap: true // Permite que el carrusel vuelva a la primera imagen después de la última
			  });
			
			  // Control manual de carrusel con las flechas
			  var carouselPrev = document.querySelector('.carousel-control-prev');
			  var carouselNext = document.querySelector('.carousel-control-next');
			
			  carouselPrev.addEventListener('click', function() {
			    carousel.prev(); // Ir a la imagen anterior
			  });
			
			  carouselNext.addEventListener('click', function() {
			    carousel.next(); // Ir a la siguiente imagen
			  });
			});
			
		*/	  
  
