$(document).ready(function () {

  //Traducción de toda la frase, se reproduce una secuencia 
  $('#traducir-form').submit(e => {
    e.preventDefault();
    let search = $('#inputTexto').val();
    $.ajax({
      url: 'modelo/DBImagenDAO.php',
      type: 'POST',
      data: {
        search
      },
      success: function traducirEntradaSync(response) {
        let data = JSON.parse(response);
        //Guardamos el historial
        guardarHistorial(data.length, data);
        //Pasamos la lista de imagenes al carrusel
        inicializarCarrusel(data);
        //Metodo asincronico con delay al ejecutar accion para mostrar carrusel
        runLoop = async () => {
          for (const value of data) {
            await new Promise(resolve => setTimeout(resolve, setVelocidad()))
            imprimir(value.referencia, value.nombre);
          }
        }
        //Metodo para imprimir una imagen 
        function imprimir(imagenEntrante, palabra) {
          template = '';
          template += `${imagenEntrante}`
          $("#outputImg").attr("src", template);
          $("#palabraTraducida").text(`${palabra}`);
        }
        //Correr el carrusel
        runLoop();
      }
    })
  })

  //iniciar observador
  document.getElementById("inputTexto").changeValueDetection();
  //traducción de una unica palabra
  document.getElementById("inputTexto").addEventListener("changeValueDetection", function () {
    let search = this.value;
    $.ajax({
      url: 'modelo/DBImagenDAO.php',
      type: 'POST',
      data: {
        search
      },
      success: function (response) {
        let data = JSON.parse(response);
        //console.log(data);
        data.forEach(data => {
          template = '';
          template += `${data.referencia}`
          $("#outputImg").attr("src", template);
          $("#palabraTraducida").text(`${data.nombre}`);
        });
      }
    })
  });

  //carrusel -control
  $("#atras").click(function () {
    carrousel('atras');
  });
  $("#adelante").click(function () {
    carrousel('adelante');
  });

  //control velocidad de traduccion
  function setVelocidad() { 
    if ($("#rapido").is(':checked')) {
      return 200;
    }else if($("#medio").is(':checked')){
      return 400;
    }else if(($("#lento").is(':checked'))){
      return 800;
    }
  }

});




//observar cambios en el textarea
HTMLElement.prototype.changeValueDetection = function () {
  var element = this;
  var oldVal = element.value;
  var GUID = function () {
    var S4 = function () {
      return (Math.floor(Math.random() * 0x10000).toString(16));
    };
    return (S4() + S4() + "-" + S4() + "-" + S4() + "-" + S4() + "-" + S4() + S4() + S4());
  };
  var uiq = "GUID-" + GUID();
  if (window.changeValueDetectionEvents == undefined) window.changeValueDetectionEvents = new Event('changeValueDetection');
  element.setAttribute("data-uiq", uiq);
  window[uiq] = setInterval(function () {
    if (element.value != oldVal) {
      oldVal = element.value;
      element.setAttribute("value", oldVal);
      element.dispatchEvent(window.changeValueDetectionEvents);
    }
    if (document.querySelectorAll("[data-uiq='" + uiq + "']").length == 0) { //clear interval, if element no exist
      clearInterval(window[uiq]);
    };
  }, 200);
};