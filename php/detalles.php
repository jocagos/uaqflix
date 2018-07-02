<?php
    // Capturar valores
    $id = $_GET['idP'];

    // Crear conexión
    $conexion = new mysqli('localhost', 'root', '', 'uaqflix');

    // Buscar pelicula por ID
    $query = "SELECT * FROM peliculas where idPelicula = '$id'";
    $rQuery = $conexion->query($query);

    $arreglo = array();
	while($pelicula = $rQuery->fetch_object()){

		array_push($arreglo, array(
			"id"=>$pelicula->idPelicula,
			"nombre"=>$pelicula->nombrePelicula,
			"categoria" =>$pelicula->categoriaPelicula,
            "duracion" => $pelicula->duracionPelicula,
            "descripcion" => $pelicula->descripcionPelicula,
            "trailer" => $pelicula->trailerPelicula,
			"img" => $pelicula->imagenPelicula
		));
	}
	echo json_encode($arreglo);
?>