<?php
	require '../config/database.php';
    
    $db = new Database();
    $con = $db->conectar();
    

if (isset($_POST['save']) && ($_SERVER['REQUEST_METHOD'] === 'POST')) {
    
    // //Código para mostrar el arreglo que envia el archivo con las imagenes o el pdf
    
    // echo '<pre>';
    // print_r($_FILES);
    // echo '</pre>';
    

    if (empty($_POST['ficha']) || empty($_POST['docum']) || empty($_POST['id_com']) || empty($_POST['id_trim']) || empty($_POST['id_jor']) || empty($_POST['id_hor'])) {

		echo"<script>alert('Existen Datos vacios.')</script>";
		echo"<script>window.location='trans_forma.php'</script>";
	} else 
        {
            $lunes = $martes = $miercoles = $jueves = $viernes = $sabado = $domingo = 0;
            $ficha    = $_POST['ficha'];
            $doc      = $_POST['docum'];
            $f_ini    = $_POST['f_ini'];
            $f_fin    = $_POST['f_fin'];
            $id_com   = $_POST['id_com'];
            $trim     = $_POST['id_trim'];
            $jorn     = $_POST['id_jor'];
            $hora     = $_POST['id_hor'];
            $diasSeleccionados = $_POST['dias'];

        // Asignar 1 a las variables correspondientes a los días seleccionados
        foreach ($diasSeleccionados as $dia) {
            switch ($dia) {
                case 'Lunes':
                    $lunes = 1;
                    break;
                case 'Martes':
                    $martes = 1;
                    break;
                case 'Miércoles':
                    $miercoles = 1;
                    break;
                case 'Jueves':
                    $jueves = 1;
                    break;
                case 'Viernes':
                    $viernes = 1;
                    break;
                case 'Sábado':
                    $sabado = 1;
                    break;
                case 'Domingo':
                    $domingo = 1;
                    break;
            }
        }
    }

    // Mostrar los valores asignados (opcional, solo para depuración)
    echo "Lunes: $lunes<br>";
    echo "Martes: $martes<br>";
    echo "Miércoles: $miercoles<br>";
    echo "Jueves: $jueves<br>";
    echo "Viernes: $viernes<br>";
    echo "Sábado: $sabado<br>";
    echo "Domingo: $domingo<br>";

            $updatereg = $con->prepare( "UPDATE asig_transv SET  docum_trans = '$doc', lun = '$lunes', mar = '$martes', mier = '$miercoles', ju = '$jueves', vie = '$viernes', sab = '$sabado', dom = '$domingo', 
            id_trim = '$trim', id_compet = '$id_com', id_jornada = '$jorn', id_horario ='$hora' WHERE ficha = $ficha AND id_compet = 37802");
                   
            $updatereg->execute();
            echo"<script>alert('Actualización Exitosa')</script>";
            echo"<script>window.close()</script>";
            
            }

	

?>