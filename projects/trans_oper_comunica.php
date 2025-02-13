<?php
require '../config/database.php';

$db = new Database();
$con = $db->conectar();

//destruir la sesion y borrar todo lo que haya en la pagina

//session_destroy();

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Asignar Transveral a formación</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="../img/LOGO.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600&family=Rubik:wght@500;600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="../lib/animate/animate.min.css" rel="stylesheet">
    <link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="../css/style.css" rel="stylesheet">
</head>
<script> 
function centrar() { 
    iz=(screen.width-document.body.clientWidth) / 2; 
    de=(screen.height-document.body.clientHeight) / 2; 
    moveTo(iz,de); 
}     
</script>
<body onload="centrar();">
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" role="status" style="width: 3rem; height: 3rem;"></div>
    </div>
    <!-- Spinner End -->

    <body>
    <br><br>    
    <div class="container">

            <form class="dashboard-container FormularioAjax" method="POST" data-form="save" data-lang="es" autocomplete="off" action="save_ficha.php" enctype="multipart/form-data">
                
                <fieldset class="mb-4">
                   
                    <div class="container-fluid"><br>
                        <div class="row">
                            <div class="col-3 col-md-3">
                                <div class="col-3 col-md-9">
                                    <div class="form-outline mb-4">
                                        <label for="ficha" class="nav-link"><i class="fas fa-id-card"></i> &nbsp;<strong>No. Ficha </strong></label>
                                        <select class="form-control" name="ficha" id="ficha" required>
                                                    <option value="" selected="">** Seleccione Ficha **</option>
                                                    <?php
                                                    /*Consulta para mostrar las opciones en el select */
                                                    $statement = $con->prepare('SELECT * FROM `formaciones` INNER JOIN formacion ON formaciones.id_formac = formacion.id_formacion AND formacion.id_tip_form = 3 ORDER BY ficha ASC');
                                                    $statement->execute();
                                                    while ($row = $statement->fetch(PDO::FETCH_ASSOC)) {
                                                        echo "<option value=" . $row['ficha'] . ">" . $row['ficha'] . " " . $row['formacion'] . "</option>";
                                                    }
                                                ?>
                                            </select>
                                    </div>
                                </div>
                            </div>                            
                            <div class="col-3 col-md-3">
                                <div class="col-13 col-md-9">
                                    <div class="form-outline mb-4">
                                        <div class="mb-4">
                                            <div class="form-outline mb-4">
                                                <label for="materia" class="nav-link"><i class="fas fa-user-tie"></i> &nbsp;<strong>Transversal </strong></label>
                                                <select class="form-control" name="materia" id="materia" required>
                                                    <option value="" selected="">** Seleccione Transversal **</option>
                                                    <?php
                                                    /*Consulta para mostrar las opciones en el select */
                                                    $statement = $con->prepare('SELECT * FROM transversales WHERE id_transv = 3');
                                                    $statement->execute();
                                                    while ($row = $statement->fetch(PDO::FETCH_ASSOC)) {
                                                        echo "<option value=" . $row['id_transv'] . ">"  . $row['transversal'] . "</option>";
                                                    }
                                                ?>
                                            </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-3 col-md-6 col-lg-6">
                                <div class="col-3 col-md-6">
                                    <div class="form-outline mb-4">
                                        <div class="mb-4">
                                            <div class="form-outline mb-4">
                                                <div class="conte" id="select2lista">
                                                    <label for="docum" class="nav-link"><i class="fas fa-user-tie"></i> &nbsp;<strong>Instructor Transversal </strong><a href="new_usuario.php">Crear </a></label>
                                                    <select class="form-control" name="docum" id="docum" required>
                                                        <option value="" selected="">** Seleccione Instructor **</option>
                                                        <?php
                                                        /*Consulta para mostrar las opciones en el select */
                                                        $statement = $con->prepare('SELECT * FROM detalle_trans INNER JOIN usuario ON detalle_trans.documen = usuario.doc INNER JOIN transversales ON detalle_trans.id_transv = transversales.id_transv WHERE usuario.id_tip_usu = 3 ORDER BY transversales.transversal');
                                                        $statement->execute();
                                                        while ($row = $statement->fetch(PDO::FETCH_ASSOC)) {
                                                            echo "<option style='text-transform:capitalize' value=" . $row['doc'] . ">" . utf8_decode($row['nombres']) .  "</option>";
                                                        }
                                                    ?>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </fieldset>
                <fieldset class="mb-3">

                <div class="container-fluid">
                        <div class="row">
                            <div class="col-3 col-md-3">
                                <div class="col-3 col-md-9">
                                    <div class="form-outline mb-4">
                                    <label for="id_jor" class="nav-link"><i class="fas fa-id-card"></i> &nbsp;<strong>Jornada </strong></label>
                                        <select class="form-control" name="id_jor" id="id_jor" required>
                                                    <option value="" selected="">** Seleccione Jornada **</option>
                                                    <?php
                                                    /*Consulta para mostrar las opciones en el select */
                                                    $statement = $con->prepare('SELECT * FROM `jornada` ORDER BY jornada ASC');
                                                    $statement->execute();
                                                    while ($row = $statement->fetch(PDO::FETCH_ASSOC)) {
                                                        echo "<option value=" . $row['id_jornada'] . ">" . $row['jornada'] . " </option>";
                                                    }
                                                ?>
                                            </select>
                                    </div>
                                </div>
                            </div>                            
                            <div class="col-3 col-md-3">
                                <div class="col-13 col-md-9">
                                    <div class="form-outline mb-4">
                                        <div class="mb-4">
                                            <div class="form-outline mb-4">
                                            <div class="conte" id="select4lista">
                                            <label for="id_trim" class="nav-link"><i class="fas fa-user-tie"></i> &nbsp;<strong>Trimestre </strong></label>
                                                <select class="form-control" name="id_trim" id="id_trim" required>
                                                    
                                                </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-3 col-md-6 col-lg-6">
                                <div class="col-3 col-md-6">
                                    <div class="form-outline mb-4">
                                        <div class="mb-4">
                                            <div class="form-outline mb-5">
                                            <div class="conte" id="select3lista">
                                                <label for="id_com" class="nav-link"><i class="fas fa-clock"></i> &nbsp;<strong>Competencia Trasnversal</strong></label>
                                                        <select class="form-control" name="id_com" id="id_com" required>
                                                            <option value="" selected="">** Seleccione Competencia **</option>
                                                            
                                                    </select>
                                            </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </fieldset>
                <fieldset class="mb-3">
                <div class="container-fluid">
                        <div class="row">
                            <div class="col-3 col-md-3">
                                <div class="col-3 col-md-9">
                                    <div class="form-outline mb-4">
                                    <div class="conte" id="select3lista">
                                        <label for="id_hor" class="nav-link"><i class="fas fa-user-tie"></i> &nbsp;<strong>Horario </strong></label>
                                        <select class="form-control" name="id_hor" id="id_hor" required>
                                            <option value="" selected="">** Seleccione Horario **</option>
                                               
                                        </select>
                                    </div>
                                    </div>
                                </div>
                            </div>                            
                            <div class="col-3 col-md-3">
                                <div class="col-13 col-md-9">
                                    <div class="form-outline mb-4">
                                        <div class="mb-4">
                                            <div class="form-outline mb-4">
                                                <div class="conte" id="select4lista">
                                                    <label for="f_ini" class="nav-link"><i class="fas fa-user-tie"></i> &nbsp;<strong>Fecha Inicio </strong></label>
                                                        <select class="form-control" name="f_ini" id="f_ini" required>
                                                        
                                                        </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-3 col-md-6 col-lg-6">
                                <div class="col-3 col-md-6">
                                    <div class="form-outline mb-4">
                                        <div class="mb-4">
                                            <div class="form-outline mb-5">
                                                <div class="conte" id="select3lista">
                                                    <label for="f_fin" class="nav-link"><i class="fas fa-calendar"></i>&nbsp;<strong>Fecha Final </strong></label>
                                                    <input type="date" class="form-control" name="f_fin" id="f_fin" required>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            </div>
                        </div>
                </fieldset>
                <fieldset class="mb-3">
                    
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12 col-md-12">
                                <div class="col-12 col-md-9">
                                        <label for="l" class="nav-link"><i class="fas fa-id-card"></i> &nbsp;<strong>Asignar días </strong></label>
                                        <td colspan="3">&nbsp;Lunes&nbsp;<input type="checkbox" name="dias[]" value="Lunes" />&nbsp;Martes&nbsp;<input type="checkbox" name="dias[]" value="Martes" />
                                             &nbsp;Miercoles&nbsp;<input type="checkbox" name="dias[]" value="Miércoles" />&nbsp;Jueves&nbsp;<input type="checkbox" name="dias[]" value="Jueves" />
                                             &nbsp;Viernes&nbsp;<input type="checkbox" name="dias[]" value="Viernes" />&nbsp;Sab&aacute;do&nbsp;<input type="checkbox" name="dias[]" value="Sábado" />
                                             &nbsp;Domingo&nbsp;<input type="checkbox" name="dias[]" value="Domingo" /></td>
                                    </div>
                                </div>
                            </div>
                        </div>
                </fieldset>
                <p class="text-center" style="margin-top: 40px;">
                    <button type="submit" class="btn btn-primary" name="save"><i class="far fa-save"></i> &nbsp; GUARDAR</button>
                </p>
               
            </form>
        </div>
        
        <!-- Copyright End -->
        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="../lib/wow/wow.min.js"></script>
        <script src="../lib/easing/easing.min.js"></script>
        <script src="../lib/waypoints/waypoints.min.js"></script>
        <script src="../lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="../lib/counterup/counterup.min.js"></script>

        <!-- Template Javascript -->
        <script src="../js/main.js"></script>
    </body>

</html>

<!-- buscamos en el archivo datos.php el instructor de la transversal seleccionada -->
<script type="text/javascript">
	$(document).ready(function(){
		$('#materia').val(1);
		recargarLista();

		$('#materia').change(function(){
			recargarLista();
		});
	})
</script>
<script type="text/javascript">
	function recargarLista(){
		$.ajax({
			type:"POST",
			url:"datos.php",
			data:"materia=" + $('#materia').val(),
			success:function(r){
				$('#docum').html(r);
			}
		});
	}
</script>

<!-- buscamos en el archivo datos1.php el la competencia de la transversal seleccionada -->
<script type="text/javascript">
	$(document).ready(function(){
		$('#materia').val(0);
		recargarLista1();

		$('#materia').change(function(){
			recargarLista1();
		});
	})
</script>
<script type="text/javascript">
	function recargarLista1(){
		$.ajax({
			type:"POST",
			url:"datos1.php",
			data:"materia=" + $('#materia').val(),
			success:function(r){
				$('#id_com').html(r);
			}
		});
	}
</script>


<!-- A PARTIR DEL NUMERO DE LA FICHA BUSCAMOS EL TRIMESTRE -->

<script type="text/javascript">
	$(document).ready(function(){
		$('#ficha').val(0);
		recargarLista1();

		$('#ficha').change(function(){
			recargarLista2();
		});
	})
</script>
<script type="text/javascript">
	function recargarLista2(){
		$.ajax({
			type:"POST",
			url:"datos2.php",
			data:"ficha=" + $('#ficha').val(),
			success:function(r){
				$('#id_trim').html(r);
			}
		});
	}
</script>



<!-- A PARTIR DEL NUMERO DE LA FICHA BUSCAMOS LA FECHA INICIAL -->

<script type="text/javascript">
	$(document).ready(function(){
		$('#ficha').val(1);
		recargarLista7();

		$('#ficha').change(function(){
			recargarLista7();
		});
	})
</script>
<script type="text/javascript">
	function recargarLista7(){
		$.ajax({
			type:"POST",
			url:"datos4.php",
			data:"ficha=" + $('#ficha').val(),
			success:function(r){
				
                $('#f_ini').html(r);
			}
		});
	}
</script>


<!-- verifica con el numero de ficha si el horario que se va a asignar ya esta programado -->

<script type="text/javascript">
	$(document).ready(function(){
		$('#ficha').val(0);
		recargarLista4();

		$('#ficha').change(function(){
			recargarLista4();
		});
	})
</script>
<script type="text/javascript">
	function recargarLista4(){
		$.ajax({
			type:"POST",
			url:"datos5.php",
			data:"ficha=" + $('#ficha').val(),
			success:function(r){
				$('#id_hor').html(r);
			}
		});
	}
</script>


