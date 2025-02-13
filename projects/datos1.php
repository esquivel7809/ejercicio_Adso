<?php 
    $conexion=mysqli_connect('localhost','root','','ejercicio_php');
 

$materia=$_POST['materia'];
/*****************************************  CONSULTA DE LOS DATOS ***************************************/
	$sql="	SELECT * FROM `competencia` 
			INNER JOIN tipo_competencia ON competencia.id_tip_comp = tipo_competencia.id_tip_comp 
			INNER JOIN transversales ON competencia.id_transvers = transversales.id_transv 
			AND competencia.id_transvers ='$materia'";

    $result=mysqli_query($conexion,$sql);
	$cadena="<label>Compentencia</label><br> 
			<select id='id_com' name='id_com'>";

	while ($ver=mysqli_fetch_row($result)) {
		$cadena=$cadena.'<option value='.$ver[0].'>'.utf8_encode($ver[1]).'</option>';
	}

	echo  $cadena."</select>";
	

?>