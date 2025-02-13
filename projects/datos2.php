<?php 
    $conexion=mysqli_connect('localhost','root','','ejercicio_php');
 


$materia=$_POST['ficha'];

/*****************************************  CONSULTA DE LOS DATOS ***************************************/
	$sql="SELECT MAX(id_trim) AS id_trim FROM asig_transv WHERE ficha ='$materia'";
    $result=mysqli_query($conexion,$sql);
	$ver=mysqli_fetch_assoc($result);
	$cadena="<label>Trimestre</label><br> 
		<select id='id_trim' name='trimestre'>";

	if ($ver['id_trim'] == '')
	{
		$cadena=$cadena.'<option value=1>'.('I').'</option>';
	}

	
	else 
	{
				$cadena=$cadena.'<option value=1>'.('I').'</option>';
	}
	echo  $cadena."</select>";



?>