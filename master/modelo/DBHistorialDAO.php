<?php
if (isset($_POST['cant_palabras'])) {
    // Conectando, seleccionando la base de datos
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
    //Recibir datos metodo post
    $fecha = $_POST['fecha'];
    $cant_palabras = $_POST['cant_palabras'];
    $contadorRegistradas = 0;
    //Establecimiento y ejecucion del query
    if ($cant_palabras > 0) {
        //Traer las palabras
        $repetidas = $_POST['repetidas'];
        //Agregar historial
        $query = "INSERT INTO historial (id_usuario,fecha,cant_palabras)
    VALUES('$id_usuario','$fecha','$cant_palabras');";
        //Agregar cada registro
        foreach ($repetidas as $repetida) {
            if ($repetida['cant'] >= 2) {
                $query .= "INSERT INTO registro (id_traduccion,id_imagen,repetida)
                VALUES(LAST_INSERT_ID(),'" . $repetida['id_imagen'] . "','" . $repetida['cant'] . "');";
                $contadorRegistradas++;
                echo "registro agregado\n";
            }
        }
        //Si no hay palabras que se repitan dos veces se agrega una aleatoria de la frase
        if ($contadorRegistradas == 0) {
            $indice = rand(0, $cant_palabras - 1);
            echo "Cero registradas, registro aleatorio \n";
            $query .= "INSERT INTO registro (id_traduccion,id_imagen,repetida)
            VALUES(LAST_INSERT_ID(),'" . $repetidas[$indice]['id_imagen'] . "','" . $repetidas[$indice]['cant'] . "');";
        }
        //Ejecutar query
        $result = mysqli_multi_query($con, $query);
        //Validar query
        if (!$result) {
            die('Query Failed.');
        }
        echo "Historial Added Successfully";
    }
}
