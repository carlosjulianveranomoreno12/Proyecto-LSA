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

  $query = "SELECT I.nombre, MAX(R.repetida) AS maximo FROM imagenes I INNER JOIN registro R ON I.id_imagen=R.id_imagen 
  INNER JOIN historial H ON H.id_traduccion=R.id_traduccion
  INNER JOIN usuario U ON U.id_usuario=H.id_usuario
  WHERE U.id_usuario=$id_usuario
  ORDER BY R.id_traduccion ASC";
  //Ejecutar query
  $result = mysqli_query($con, $query);
  //Validar query
  if(!$result) {
    die('Query Failed'. mysqli_error($con));
  }
  //Pasar datos a un array
  $json = array();
  while($row = mysqli_fetch_array($result)) {
    $json[] = array(
      'nombre' => $row['nombre']
    );
  }
  //Pasar array a JSON
  $jsonstring = json_encode($json);
  echo $jsonstring;
  //}
?>