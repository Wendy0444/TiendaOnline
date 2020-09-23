<?php include('header.php'); ?>
<?php
	session_start();
	
	if (isset($_SESSION['id'])){
		$query=mysqli_query($conn,"select * from user where userid='".$_SESSION['id']."'");
		$row=mysqli_fetch_array($query);
		
		if ($row['access']==1){
			header('location:admin/');
		}
		else{
			header('location:user/');
		}
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Login</title>
	
	<!--link rel="icon" type="image/png" href="images/icons/favicon.png"/-->

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
	<link rel="stylesheet" href="css/style_login.css">
</head>

<body>

    <div class="main">

        <!-- Formulario Registrarse -->
        <section class="signup">
            <div class="container">
			<center><img src="images/3.png" style="margin-top: 60px; max-height: 80px;"></center>
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Regístrate</h2>
                        
                        <form role="form" method="POST" action="register.php" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="name" placeholder="Nombre" required/>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="fa fa-truck"></i></label>
                                <input type="text" name="address"  placeholder="Direccion" required/>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-card"></i></label>
                                <input type="password" name="contact" placeholder="Tarjeta de Crédito" maxlength="19" required/>
                            </div>
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="username" placeholder="Usuario" required/>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="password" placeholder="Contraseña" required/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term"/>
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>Acepto todos los terminos en <a href="#" class="term-service">Terminos de Servicio</a></label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Registrar"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="images/img_registro.jpg" alt="sing up image"></figure>
                        <a href="#your_name" class="signup-image-link">Ya soy miembro</a>
                    </div>
                </div>
            </div>
        </section>

        <!-- Formulario Iniciar Sesión -->
        <section class="sign-in">
            <div class="container">
			<center><img src="images/3.png" style="margin-top: 60px; max-height: 80px;"></center>
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="images/img_sesion.jpg" alt="sing up image"></figure>
                        <a href="#name" class="signup-image-link">Crea una cuenta</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Inicia Sesión</h2>
                        <form method="POST" action="login.php" class="register-form" id="login-form">
                            <div class="form-group">
                                <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="username" id="your_name" placeholder="Usuario" required/>
                            </div>
                            <div class="form-group">
                                <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="password" id="your_pass" placeholder="Contraseña" required/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>Recordarme</label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit"  name="signin" id="signin" class="form-submit" value="Iniciar Sesión"/>
                            </div>
                        </form>
                        <div class="social-login" style="margin-top: 50px;">
                            <span class="social-label">o incia sesión con:</span>
                            <ul class="socials">
                                <li><a href="https://www.facebook.com/login.php"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                                <li><a href="https://twitter.com/login"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                <li><a href="https://accounts.google.com/signin/v2/identifier?hl=es&service=mail&flowName=GlifWebSignIn&flowEntry=ServiceLogin"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                            </ul>
							<center>
							<?php
								
								if(isset($_SESSION['msg'])){
									echo $_SESSION['msg'];
									unset($_SESSION['msg']);
								}
							?>
							</center>
                        </div>
                      
                    </div>
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery_login.min.js"></script>
	<script src="js/main_login.js"></script>
	<?php include('script.php'); ?>
</body>
</html>