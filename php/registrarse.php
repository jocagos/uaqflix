<?php 
	// Iniciar conexión
	$conexion = mysqli_connect('localhost', 'root', '', 'uaqflix');

	// Capturar valores
	$n = $_GET['u'];
	$m = $_GET['c'];
    $p = $_GET['pw'];

	// Verificar que los campos no esten vacios
	if(empty($n) && empty($m) && empty($p)){
		// Todos los campos están vacios
		echo "0";
	} else{
		// No todos los campos están vacios

		// Verificar si el campo de nombre de usuario está vacio
		if(empty($n)){
			// El campo está vacio
			echo "2";
		} else{
			// El campo no está vacio
			
			// Verificar si el campo de correo esta vacio
			if(empty($m)){
				// El campo esta vacio
				echo "3";
			}else{
				// El campo no esta vacio
		
				// Verificar si el campo de contraseña esta vacio
				if(empty($p)){
					// El campo esta vacio
					echo "4";
				} else{

					// Verificar que el nombre de usuario o correo no se repitan. Solo pueden 
					// existir un nombre de usuario unico al igual que el correo
					
					// Query para verificar si existe un nombre de usuario o correo ya existentes en la aplicación
					$query = "SELECT * FROM usuarios where nombreUsuario like '$n' and correoUsuario like '$m'";
					$rQuery = $conexion->query($query);

					if(mysqli_num_rows($rQuery) == 1){
						// El nombre de usuario o correo ya existen
						echo "5";
					}else{
						// Registro existoso

						// Encriptar contraseña
						$pass = md5($p);
						
						$insertQuery = "INSERT INTO usuarios (nombreUsuario, passwordUsuario, correoUsuario) VALUES ('$n', '$pass', '$m')";
						$rInsert = $conexion->query($insertQuery);
						echo "1";
					}
				}
			}
		}
	}
?>