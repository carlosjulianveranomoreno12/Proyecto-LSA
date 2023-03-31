<?php
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
  $query = "SELECT x.nombre, COUNT(r.repetida) maximo,SUM(r.repetida) AS 'total' 
    FROM historial h, usuario u, imagenes x, registro r 
    WHERE h.id_usuario=$id_usuario and h.id_usuario=u.id_usuario and x.id_imagen=r.id_imagen 
    and MONTH(h.fecha) = MONTH(CURDATE()) GROUP BY h.id_traduccion 
    ORDER BY maximo DESC LIMIT 1";
  $result = mysqli_query($con, $query);
  if(!$result) {
    die('Query Failed'. mysqli_error($con));
  }

  $json = array();
  while($row = mysqli_fetch_array($result)) {
    $json[] = array(
      'nombre' => $row['nombre'],
      'maximo' => $row['maximo'],
      'total' => $row['total']
    );
  }
  $jsonstring = json_encode($json);
  echo $jsonstring;
?>