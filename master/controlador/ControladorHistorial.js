
//Guardar historial

function guardarHistorial(cant_palabras, arrayPalabras) {
  const postData = {
    fecha: obtenerFechaActual(),
    cant_palabras: cant_palabras,
    repetidas: contarRepetidas(arrayPalabras)
  };
  console.log(postData);
  $.post('modelo/DBHistorialDAO.php', postData, (response) => {
    console.log(response);
  });
}

//Metodo para contar palabras repetidas
function contarRepetidas(arrayPalabras) {
  var repetidas = {};
  arrayPalabras.forEach(function (registro) {
    var temp = registro["id"];
    repetidas[temp] = repetidas[temp] ? (repetidas[temp] + 1) : 1;
  })
  repetidas= Object.keys(repetidas).map(function (temp) {
      return {
        id_imagen: temp,
        cant: repetidas[temp]
      }; 
  });
  return repetidas;
}

//Metodo para obtener la fecha actual
function obtenerFechaActual() {
  var hoy = new Date();
  return hoy.getFullYear() + "-" + (hoy.getMonth() + 1) + "-" + hoy.getDate();
}