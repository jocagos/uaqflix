<?php
    // Capturar valor del buscador
    $buscar = $_GET['search'];

    // Crear conexión
    $conexion = new mysqli('localhost', 'root', '', 'uaqflix');

    // Busca cualquier coincidencia con la base de datos
    $_query = "SELECT * FROM peliculas WHERE 
                nombrePelicula LIKE '%$buscar%'
                OR categoriaPelicula LIKE '%$buscar%'
                OR duracionPelicula LIKE '%$buscar%'";
    // El valor no está vacio
    // Buscar pelicula
    $rQuery = $conexion->query($_query);
    if(mysqli_num_rows($rQuery) != 0){
        // Las peliculas son cargadas
        $arreglo = array();
        while($pelicula = $rQuery->fetch_object()){
            array_push($arreglo, array(
                "id"=>$pelicula->idPelicula,
                "nombre"=>$pelicula->nombrePelicula,
                "categoria" =>$pelicula->categoriaPelicula,
                "duracion" => $pelicula->duracionPelicula,
                "img" => $pelicula->imagenPelicula
            ));
        }
        echo json_encode($arreglo);
    } else{
        echo "none";
    }
?>