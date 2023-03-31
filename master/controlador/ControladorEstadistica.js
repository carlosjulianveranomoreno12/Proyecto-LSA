$(document).ready(function(){

  // Testing Jquery
  console.log('jquery is working!');
  nTraducciones();
  palabraFav();
  palabraMes();
  palabraAnio();
  totalTraducciones();

  // Hallar el número de traduccione de un usuario
  function nTraducciones() {
    $.ajax({
      url: '../modelo/consultaNTraducciones.php',
      type: 'GET',
      success: function(response) {
      //console.log(response);
        let data = JSON.parse(response);
        $.get("../modelo/consultaNTraducciones.php", {response}, function(respuesta){
          data.forEach(data => {
            $("#nt").html(`${data.n_traducciones}`);
          });
          
       })
        
        
      }
    })
  }

  // Hallar el número de traducciones y la palabra favorita (más traducida)
  function palabraFav() {
    $.ajax({
      url: '../modelo/consultaPFavorita.php',
      type: 'GET',
      success: function(response) {
      //console.log(response);
        let data = JSON.parse(response);
        $.get("../modelo/consultaPFavorita.php", {response}, function(respuesta){
          data.forEach(data => {
            $("#pt").html(`${data.nombre}`);
          });
          
       })
        
        
      }
    })
  }

  // Hallar palabra más traducida en el último mes
  function palabraMes() {
    $.ajax({
      url: '../modelo/consultaMes.php',
      type: 'GET',
      success: function(response) {
      //console.log(response);
        let data = JSON.parse(response);
        $.get("../modelo/consultaMes.php", {response}, function(respuesta){
          data.forEach(data => {
            $("#ptm").html(`${data.nombre}`);
          });
          
       })
        
        
      }
    })
  }

  // Hallar palabra más traducida en el último mes
  function palabraAnio() {
    $.ajax({
      url: '../modelo/consultaAnio.php',
      type: 'GET',
      success: function(response) {
      //console.log(response);
        let data = JSON.parse(response);
        $.get("../modelo/consultaAnio.php", {response}, function(respuesta){
          data.forEach(data => {
            $("#pta").html(`${data.nombre}`);
          });
          
       })
        
        
      }
    })
  }

  // Hallar total de traducciones
  function totalTraducciones() {
    $.ajax({
      url: '../modelo/consultaTotal.php',
      type: 'GET',
      success: function(response) {
      //console.log(response);
        let data = JSON.parse(response);
        $.get("../modelo/consultaTotal.php", {response}, function(respuesta){
          data.forEach(data => {
            $("#tt").html(`${data.total}`);
          });
          
       })
        
        
      }
    })
  }

});