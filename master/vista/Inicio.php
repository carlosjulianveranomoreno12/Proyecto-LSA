<?php
include ("../modelo/SessionData.php");
 if(isset($_SESSION['id_usuario'])==true and isset($_SESSION['nombre_usuario'])==true){
	 echo "correcto";
	 header("location:../index2.php");
 }
?>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<meta name="author" content="Kodinger">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>Inicio</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/InicioRegistro.css">
	<link rel="stylesheet" href="css/animate.css">
</head>

<body class="my-login-page">
	<section class="">
			<div class="row justify-content-center ">
				<div class="card-wrapper">
					<div class="brand">
						<img src="img/logo.png" alt="logo">
					</div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title text-center">Inicio</h4>
							<form method="POST" id="login-form">
								<div class="form-group">
									<label for="email">Correo electrónico</label>
									<input id="email" type="email" class="form-control" name="email" value="" required autofocus>
								</div>

								<div class="form-group">
									<label for="password">Contraseña
										<a href="#" class="float-right">
											¿Olvidó su contraseña?
										</a>
									</label>
									<input id="password" type="password" class="form-control" name="password" required data-eye>
								</div>	

								<div class="form-group m-0">
									<button type="submit" class="btn btn-primary btn-block">
										Ingresar
									</button>
								</div>
								<div class="mt-4 text-center crear-inicio">
									¿Posee una cuenta? <a href="Registro.php">Crear Cuenta</a>
								</div>
								<br>
								<span id="resultLogin"></span>
							</form>
						</div>
					</div>

					<div class="footer">
						Copyright &copy; 2020 &mdash; LSA
					</div>
				</div>
			</div>
	</section>
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
	<!-- Logica de Usuario -->
	<script src="../controlador/ControladorUsuario.js"></script>
	<!-- Librerias jquery-->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
</body>
</html>
