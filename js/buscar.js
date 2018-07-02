/*
// Buscar peliculas
function buscar() {
    // Capturar el valor del buscador
    buscar = document.getElementById('buscador').value;

    // Crear ajax
    buscarAjax = new XMLHttpRequest;
    buscarAjax.open('GET', 'http://localhost/uaqflix/php/buscar.php?search=' + buscar);
    buscarAjax.send();
    buscarAjax.onreadystatechange = function() {
        if (buscarAjax.readyState == 4 && buscarAjax.status == 200) {
            if (buscarAjax.responseText != "0") {
                // Cargar peliculas
            } else {
                // Error si el campo esta vacio
                if (buscarAjax.responseText == "0") {
                    alert('Debes ingresar algún criterio de busqueda');
                }
                // Error si no se encontra ninguna pelicula
                if (buscarAjax.responseText == "1") {
                    alert('No hay peliculas que coincidan con tus especificaciones');
                }
            }
        }
    }
}
*/