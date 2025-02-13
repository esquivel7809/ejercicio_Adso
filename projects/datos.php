<?php 
    $conexion=mysqli_connect('localhost','root','','ejercicio_php');
 

$materia=$_POST['materia'];
/*****************************************  CONSULTA DE LOS DATOS ***************************************/
	$sql="SELECT * FROM detalle_trans INNER JOIN usuario ON detalle_trans.documen = usuario.doc INNER JOIN tipo_usu ON usuario.id_tip_usu = tipo_usu.id_tip_usu 
    INNER JOIN transversales ON transversales.id_transv = detalle_trans.id_transv WHERE usuario.id_tip_usu = 3  AND detalle_trans.id_transv ='$materia'  OR detalle_trans.id_transv ='13' AND detalle_trans.documen = usuario.doc ORDER by usuario.doc ";

    $result=mysqli_query($conexion,$sql);
	$cadena="<label>Instructor</label><br> 
			<select id='docu' name='docu'>";

	while ($ver=mysqli_fetch_row($result)) {
		$cadena=$cadena.'<option value='.$ver[1].'>'.utf8_encode($ver[5]).'</option>';
	}

	echo  $cadena."</select>";
	

?>