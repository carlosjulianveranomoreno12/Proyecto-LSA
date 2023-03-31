<?php
include ("../modelo/SessionData.php");
 if(isset($_SESSION['id_usuario'])==false or isset($_SESSION['nombre_usuario'])==false){
    header("location:Inicio.php");
 }
?>


<!DOCTYPE html>
<html>

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- Main desing CSS -->
    <link rel="stylesheet" href="css/estad.css">
    <!--Line Chart-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.js"></script>

</head>

<body>
    <!-- Cabecera-->
    <header class="fixed-top navbar-light">
        <div class="row">
            <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-4 text-right animated fadeInLeft slow">
              <div class="logo">
                <img src="img/LOGO2.png" alt="logo" width="361px" height="68px" class="img-fluid">
              </div>
            </div>   
    
            <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-8 animated fadeInRight slow">
              <ul class="nav ">
                <li class="nav-item">
                  <a class="nav-link" href="#">Inicio</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Acerca de</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Contacto</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="VentanaEstadistica.php">Estadísticas</a>
                </li>
                <li class="iniciar-S nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink btnLogin" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <?php echo $_SESSION['nombre_usuario'] ?>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                      <a class="dropdown-item" href="../modelo/Logout.php" id="btnLogout">Cerrar sesión</a>
                    </div>
                  </li>
              </ul>
            </div>
          </div>
    </header>

    <!-- Cuerpo-->
    <main role="main" class="min">
        <section class="panel-wrap">
            <div class="row titulo">
                <div class="col-md-12 justify-content-center text-center">
                    <h2>Datos Estadisticos que puedan ser de tu interes</h2>
                </div>
            </div>


            <div class="row align-self-center">

                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3 text-center">
                    <div class="card NT rounded mx-auto d-block" style="max-width: 30rem;">
 
                        <div class="card-body">
                            <h5 class="card-title">GRAFICA </h5>
                            <h1 class="card-text" id=""></h1>
                        </div>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-5 text-center">
                    <div class="card PT rounded mx-auto d-block" style="max-width: 18rem;">
                        <!--<div class="card-header">Header</div>-->
                        <div class="card-body">
                            <h5 class="card-title">¿Cuantas traducciones he realizado en LSA?</h5>
                            <h1 class="card-text" id="nt">355 </h1>
                        </div>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3 text-center">
                    <div class="card PTM rounded mx-auto d-block" style="max-width: 18rem;">
                        <!--<div class="card-header">Header</div>-->
                        <div class="card-body">
                            <h5 class="card-title">¿Caul es mi palabra favorita</h5>
                            <h1 class="card-text" id="pt">casa</h1>
                        </div>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-11 text-center">
                    <div class="card PTA rounded mx-auto d-block" style="max-width: 18rem;">
                        <!--<div class="card-header">Header</div>-->
                        <div class="card-body">
                        <h5 class="card-title">Traducciones del mes</h5>
                            <h1 class="card-text" id="ptm"></h1>            
                        </div>
                    </div>
                </div>
            </div>

           
        </section>
        
    </main>
    

    <!-- Librerias bootstrap -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
    </script>
    
    <!-- Librerias jquery-->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>

        <!-- Logica de las estadisticas -->
    <script src="../controlador/ControladorEstadistica.js"></script>
    <script src="../controlador/ControladorUsuario.js"></script>

</body>

</html>