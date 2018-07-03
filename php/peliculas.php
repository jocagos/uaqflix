<?php
	// Iniciamos la conexion y variables
	$conexion = new mysqli('localhost','root','','uaqflix');
	$funciones = "SELECT * FROM peliculas";
	$respuesta = $conexion->query($funciones);
	// Para cada pelicula 
	$arreglo = array();
	while($pelicula = $respuesta->fetch_object()){
		array_push($arreglo, array(
			"id"=>$pelicula->idPelicula,
			"nombre"=>$pelicula->nombrePelicula,
			"categoria" =>$pelicula->categoriaPelicula,
			"duracion" => $pelicula->duracionPelicula,
			"img" => $pelicula->imagenPelicula
		));
	}
	echo json_encode($arreglo);
?>