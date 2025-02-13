<?php 
    $conexion=mysqli_connect('localhost','root','','ejercicio_php');
 


$materia=$_POST['ficha'];
	/*****************************************  CONSULTA DE LOS DATOS de la fecha inicial ***************************************/
	$sql1="SELECT f_ini FROM formaciones WHERE ficha ='$materia'";
    $result1=mysqli_query($conexion,$sql1);
	  
	$cadena1="<label>Fecha Inicial</label><br> 
			<select id='f_ini' name='f_ini'>";

	while ($ver1=mysqli_fetch_row($result1)) {
		$cadena1=$cadena1.'<option value='.$ver1[0].'>'.utf8_encode($ver1[0]).'</option>';
	}

	echo  $cadena1."</select>";
	

?>