<?php
//Conectar y seleccionar base de datos
require_once("conexion.php");
//Lammar clase de sesion
require("SessionData.php");
//Definir id usuario
if((isset($_SESSION['id_usuario'])==true)){
  $id_usuario =$_SESSION['id_usuario'];
}
else{
  $id_usuario=1;
}

  //Consultar total de traducciones de un usuario
  $query = "SELECT COUNT(*) AS n_traducciones FROM historial WHERE id_usuario=$id_usuario";// reemplazar id_usuario por $id_usuario
  //Ejecutar query
  $result = mysqli_query($con, $query);
  //Validar query
  if(!$result) {
    die('Query Failed'. mysqli_error($con));
  }
  //Pasar datos de la consulta a un array
  $json = array();
  while($row = mysqli_fetch_array($result)) {
    $json[] = array(
      'n_traducciones' => $row['n_traducciones']
    );
  }
  //Pasar array a JSON
  $jsonstring = json_encode($json);
  echo $jsonstring;
//}
