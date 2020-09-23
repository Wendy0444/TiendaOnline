<?php

$conn = mysqli_connect("localhost","root","","pos");
if (!$conn) {
	die("Conexión fallida: " . mysqli_connect_error());
}
 
?>