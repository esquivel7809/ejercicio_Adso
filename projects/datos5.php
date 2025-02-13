<?php 
    $conexion=mysqli_connect('localhost','root','','ejercicio_php');
 


$materia=$_POST['ficha'];


/*****************************************  CONSULTA DE LOS DATOS ***************************************/
	$sql="SELECT * FROM `horario` WHERE horario.id_hora NOT IN ( SELECT id_horario FROM asig_transv WHERE asig_transv.ficha = $materia AND asig_transv.id_trim = 1 ORDER BY horario.id_hora ASC)";
   
	
    $result=mysqli_query($conexion,$sql);
	$cadena="<label>Horario</label><br> 
			<select id='id_hora' name='horario'>";

	while ($ver=mysqli_fetch_row($result)) {
		$cadena=$cadena.'<option value='.$ver[0].'>'.utf8_encode($ver[1]).' '. "HORAS ".' '.utf8_encode($ver[2]).'</option>';
	}

	echo  $cadena."</select>";
	
	

?>