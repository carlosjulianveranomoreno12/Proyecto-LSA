<?php
//Conectar y seleccionar base de datos
require_once("conexion.php");

  //Consultar total de traducciones (global)
  $query = "SELECT COUNT(id_traduccion) AS total FROM historial";
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
      'total' => $row['total']
    );
  }
  //Pasar array a JSON
  $jsonstring = json_encode($json);
  echo $jsonstring;
?>