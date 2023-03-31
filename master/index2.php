<?php
include ("modelo/SessionData.php");
 if(isset($_SESSION['id_usuario'])==false or isset($_SESSION['nombre_usuario'])==false){
     header("location:vista/Inicio.php");
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
    <!-- Animation Librarie CSS -->
    <link rel="stylesheet" href="vista/css/animate.css">
    <!-- Main desing CSS -->
    <link rel="stylesheet" href="vista/css/principal.css">


    <!-- Icons -->
    <script src="https://kit.fontawesome.com/7c0a5ae648.js" crossorigin="anonymous"></script>

</head>

<body>
    <!-- Cabecera-->
    <header class="fixed-top navbar-light">
        <div class="row">
            <div class="col-12 col-sm-12 col-md-12 col-lg-6 col-xl-4 text-right animated fadeInLeft slow">
              <div class="logo">
                <img src="vista/img/LOGO2.png" alt="logo" width="361px" height="68px" class="img-fluid">
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
                  <a class="nav-link" href="vista/VentanaEstadistica.php">Estadísticas</a>
                </li>
                <li class="iniciar-S nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink btnLogin" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <?php echo $_SESSION['nombre_usuario'] ?>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                      <a class="dropdown-item" href="modelo/Logout.php" id="btnLogout">Cerrar sesión</a>
                    </div>
                  </li>
              </ul>
            </div>
          </div>
    </header>
    
    <!-- Cuerpo-->
    <main role="main" class="min">
        <section class="traduccion-wrap">
            <div class="row justify-content-center ">
                <div class="col-md-2 align-self-center col-lg-4 col-12 wow fadeInLeft fast">
                    <div class="speed-menu">
                        <label>
                            <i class="fas fa-cog"></i>
                        </label>
                        <label>
                            <input type="radio" name="speed" id="lento">
                            <i class="fas fa-angle-right"></i>
                        </label>
                        <label>
                            <input type="radio" name="speed" id="medio" checked>
                            <i class="fas fa-chevron-right"></i>
                        </label>
                        <label>
                            <input type="radio" name="speed" id="rapido">
                            <i class="fas fa-angle-double-right"></i>
                        </label>
                        <span>Velocidad</span>
                    </div>
                </div>
                <div class="card col-md-6 col-lg-4 col-12 wow fadeIn slow ">
                    <img class="card-img-top" src="vista/img/default.png" alt="Card image cap" id="outputImg">
                </div>
                <div class="col-md-10 align-self-center col-lg-4 col-12 wow fadeIn slow">
                    <h5 class="etpalabra" id="palabraTraducida">
                        Palabra traducida
                    </h5>
                </div>
            </div>
            <div class="row justify-content-center carrusel-control">
                <div class="col">
                    <button class="btn carrusel" id='atras'>Atrás</button>
                </div>
                <div class="col">
                    <button class="btn carrusel" id='adelante'>Adelante</button>
                </div>

            </div>
            <div class="row justify-content-center ">
                <div class="col">
                    <form class="input-form" id="traducir-form">
                        <div class="input-group">
                            <textarea name="search" id="inputTexto" class="form-control" rows="3" type="search"
                                placeholder="Escribe la palabra o frase a traducir" aria-label="Search"></textarea>
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button" id="btnMic" onclick="iniciarReconocimientoVoz(event)">
                                    <img src="vista/img/microfono.png" alt="mic" width="30px" height="30px" id="start_img">
                                </button>
                            </span>
                        </div>
                        <button class="btn my-2 my-sm-0" type="submit" id="btnTraducir">Traducir</button>
                    </form>
                  
                </div>
            </div>
        </section>
        <section class="information-wrap">
            <div class="row justify-content-center ">
                <div class="col-12 col-sm-6 col-md-3 col-lg-3 col-xl-3" >
                    <div class="inf-aside">
                        <aside>
                            <div class="titulo1 text-center">
                                <h1 class="wow fadeInLeft slow">¿Qué es <span class="L">L</span> <span class="S">S</span> <span
                                        class="A">A</span>?</h1>
                            </div>
                            <div class="parrafo">
                                <div class="row contenido align-items-center">
                                    <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 text-center">
                                        <p>LSA es un proyecto construido como parte del proceso de formación profesional de 3 ingenieros
                                            de sistemas de la universidad de cundinamarca con el objetivo de aportar a la inclusión social
                                            a travez de la implementación de medios digitales en la construcción de canales de 
                                            comunicación.</p>
                                    </div>
                                    
                                </div>
                                
                                <p class="mensaje wow flipInY slow">Disfruta tu visita en el sitio y comparte con tus amigos.
                                    Agradecemos tu apoyo.
                                </p>
                            </div>
                        </aside>
                    </div>
                </div>
                <div class="col-12 col-sm-9 col-md-9 col-lg-9 col-xl-9">
                    <div class="inf-section">
                        <div class="seccion">
                            <div class="titulo2">
                                <h2 class="wow slideInDown slow"><span>¿</span>Que Ofrece LSA<span>?</span></h2>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <article class="persona wow fadeIn slow">
                                        <img src="vista/img/traduccion.png" alt="foto" width="150px" height="150px"
                                            class="img-fluid">
                                        <h3>Traducción</h3>
                                        <p class="apellido">Traduce de texto</p>
                                        <p class="apellido">y voz a lengua de señas</p>
                                    </article>
                                </div>
                                <div class="col-md-4">
                                    <article class="persona wow fadeIn slow">
                                        <img src="vista/img/aprendizaje.png" alt="foto" width="150px" height="150px"
                                            class="img-fluid">
                                        <h3>Aprendizaje</h3>
                                        <p class="apellido">Aprende los</p>
                                        <p class="apellido">fundamentos de la</p>
                                        <p class="apellido">lengua de señas</p>
                                    </article>
                                </div>
                                <div class="col-md-4">
                                    <article class="persona wow fadeIn slow">
                                        <img src="vista/img/gratis.png" alt="foto" width="150px" height="150px"
                                            class="img-fluid">
                                        <h3>Gratis</h3>
                                        <p class="apellido">Accede a todas las</p>
                                        <p class="apellido">características de forma</p>
                                        <p class="apellido">totalmente gratuita</p>
                                    </article>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pie">
                        <img src="vista/img/information.png" alt="pie" width="320px" height="120px" class="img-fluid wow swing">
                    </div>
                </div>
            </div>
        </section>
        <section class="footer-wrap">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="frase text-center">
                        <h1 class="wow fadeInLeft slow">"Lo más Importante de la comunicación es</h1>
                        <h1 class="wow fadeInLeft slow">escuchar lo que no se dice."</h1>
                        <footer class="blockquote-footer"><cite title="Source Title" class="wow fadeIn slow">Peter
                                Ferdinand Drucker</cite>
                        </footer>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center ">
                <div class="col-md-6 col-lg-6 col-12">
                    <img src="vista/img/footer.png" alt="imagen 1" class="img-fluid">
                </div>
                <div class="col-md-6 col-lg-6 col-12 social-cont">
                    <h2>Contáctanos aquí:</h2>
                    <div class="social row justify-content-center">
                        <img src="vista/img/gmail.png" alt="correo" width="30px" height="30px">
                        <div class="contact-dato">
                            <span>lenguajesignadoamigo@gmail.com</span>
                        </div>
                    </div>
                    <div class="social row justify-content-center">
                        <img src="vista/img/whatsapp.png" alt="correo" width="30px" height="30px">
                        <div class="contact-dato">
                            <span>3138402275</span>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="row foot">
                <div class="col-sm-6 "> LSA &copy;2020 - Todos los derechos reservados.</div>
                <div class="col-sm-6 text-xs-right ">
                    <ul class="list-inline">
                        <li class="list-inline-item">
                            <a href="#">Inicio</a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#">Aviso legal</a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#">Cookies</a>
                        </li>
                    </ul>
            </footer>

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
    <!-- Frontend Logic -->
    <script src="controlador/ControladorTraduccion.js"></script>
    <!-- Libreria de scroll animation -->
    <script src="vista/js/wow.min.js"></script>
    <!-- Libreria de animaciones botones -->
    <!--<script src="vista/js/animaciones.js"></script>-->
    <!-- Logica reconocimiento -->
    <script src="controlador/ReconocimientoVoz.js"></script>
    <!-- Logica del corrusel -->
    <script src="controlador/carrusel.js"></script>
    <!-- Logica del historial -->
    <script src="controlador/ControladorHistorial.js"></script>
    <!-- Logica de Usuario -->
    <script src="controlador/ControladorUsuario.js"></script>
    <!-- Inicializar wow -->
    <script>
        new WOW().init();
    </script>
    <!-- Librerias jquery-->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
</body>

</html>