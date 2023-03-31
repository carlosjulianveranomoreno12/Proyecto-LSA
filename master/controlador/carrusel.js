//declaracionde variables globales
let imagenes = 0;
var Idimg = 'outputImg';
let contador = 0;

function carrousel(direccion) {
  if (imagenes.length > 0) {
    if (direccion == 'atras') {
      contador--;
      if (contador == -1) {
        contador = imagenes.length-1;
      }
      document.getElementById(Idimg).src = imagenes[contador].referencia;
    }
    if (direccion == 'adelante') {
      contador++;
      if (contador == imagenes.length) {
        contador = 0;
      }
      document.getElementById(Idimg).src = imagenes[contador].referencia;
    }
  }
  $("#palabraTraducida").text(imagenes[contador].nombre);
}

function inicializarCarrusel(listaImagenes) {
  imagenes = listaImagenes;
  contador=listaImagenes.length-1
}