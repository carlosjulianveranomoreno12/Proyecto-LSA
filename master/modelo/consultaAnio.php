<?php
require_once("conexion.php");
//Lammar clase de sesion
require("SessionData.php");

//Definir id usuario
if ((isset($_SESSION['id_usuario']) == true)) {
  $id_usuario = $_SESSION['id_usuario'];
} else {
  $id_usuario = 1;
}

//Consultar palabra mayor traducida en el último año
$query = "SELECT I.nombre as imagen, SUM(R.repetida) as suma, H.fecha
FROM imagenes I INNER JOIN registro R ON I.id_imagen=R.id_imagen 
 INNER JOIN historial H ON H.id_traduccion=R.id_traduccion
 INNER JOIN usuario U ON U.id_usuario=H.id_usuario
 WHERE U.id_usuario=$id_usuario AND YEAR(H.fecha) = YEAR(CURDATE())
GROUP BY R.id_imagen ORDER BY suma DESC LIMIT 1";
//Ejecutar query
$result = mysqli_query($con, $query);
//Validar query
if (!$result) {
  die('Query Failed' . mysqli_error($con));
}
//Pasar datos de la consulta a un array
$json = array();
while ($row = mysqli_fetch_array($result)) {
  $json[] = array(
    'nombre' => $row['imagen']
  );
}
//Pasar array a JSON
$jsonstring = json_encode($json);
echo $jsonstring;
  //}
