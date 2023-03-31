<?php
if(isset($_POST['search'])){
    // Conectando, seleccionando la base de datos
    require_once("conexion.php");
    //Recibir Datos mediante metodo post
    $cadenaTexto = $_POST['search'];
    //Declaracion del array de palabras;
    $palabras= explode(" ",$cadenaTexto);
    //Declaracion del array de retorno de datos
    $json = array();
    //Consultar y agregar cada palabra al array de imagenes
    foreach ($palabras as &$palabraSola) {
        //Declarar consulta a realizar
        $sql = "SELECT * FROM imagenes WHERE nombre='$palabraSola'";
        //Realizar cnsulta y extraer datos
        $result = mysqli_query($con,$sql) or die ("Error al consultar");
        while($row= mysqli_fetch_array($result)){
            //Formatear la imagen blob en base 64
            //Agregar datos al array
            $json[] = array(
                'referencia'=>$row['referencia'],
                'id'=>$row['id_imagen'],
                'nombre'=>$row['nombre']
            );
        }
    }
    //Convertir json a string
    $jsonstring = json_encode($json);
    //Retornar array con los datos consultados
    echo $jsonstring;
}
?>