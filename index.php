
<?php
require 'config/database.php';


$db = new Database();
$con = $db->conectar();


$sql1 = $con->prepare("SELECT * FROM `asig_transv` INNER JOIN usuario ON asig_transv.docum_trans = usuario.doc INNER JOIN trimestre ON asig_transv.id_trim = trimestre.id_trim INNER JOIN competencia ON asig_transv.id_compet = competencia.id_compe INNER JOIN jornada ON asig_transv.id_jornada = jornada.id_jornada INNER JOIN horario ON asig_transv.id_horario = horario.id_hora ORDER BY asig_transv.docum_trans");
$sql1->execute();
$resultado1 = $sql1->fetchAll(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Reporte Transversales Programadas</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/LOGO.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600&family=Rubik:wght@500;600;700&display=swap"
        rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner"
        class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" role="status" style="width: 3rem; height: 3rem;"></div>
    </div>
    <!-- Spinner End -->

 <!-- Navbar Start -->
 <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top py-0 pe-5">
        <a href="index.php" class="navbar-brand ps-5 me-0">
        <img src="img/logo3.png">
        </a>

        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
            <!-- <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle " data-bs-toggle="dropdown">Usuarios</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="activar_usuarios.php" class="dropdown-item ">Gestionar Usuarios</a>
                        <a href="new_usuario.php" class="dropdown-item ">Crear Instructores</a>
                        <a href="new_usuario_admin.php" class="dropdown-item ">Crear Coordinador/Admin</a>
                    </div>
                </div> -->

                <!-- <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle " data-bs-toggle="dropdown">Ambientes</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="new_curse.php" class="dropdown-item ">Crear Nave</a>
                        <a href="new_curse_amb.php" class="dropdown-item ">Crear Ambiente Formación</a>
                        <a href="edit_curse.php" class="dropdown-item">Editar Nave</a>
                        <a href="new_curse_amb.php" class="dropdown-item ">Editar Ambiente Formación</a>
                    </div>
                </div>

               
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Competencias</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="nuevo_empleo.php" class="dropdown-item ">Crear Competencia</a>
                        <a href="editar_empleo.php" class="dropdown-item ">Editar Competencia</a>
                        <a href="new_forma.php" class="dropdown-item ">Crear Tipo Formación</a>
                        <a href="new_transversal.php" class="dropdown-item ">Crear Transversales</a>
                    </div>
                </div> -->
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Asignación</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="ficha_form.php" class="dropdown-item ">Ficha y formación</a>
                        <a href="instru_forma.php" class="dropdown-item ">Instructor a Formación</a>
                        <a href="instru_trans.php" class="dropdown-item ">Instructor a Transversal</a>
                        <a href="trans_forma.php" class="dropdown-item ">Transversal a Formación</a>
                        <a href="instru_trans_tec.php" class="dropdown-item ">Transversal Informática-Ciencias</a>
                        <a href="#" class="dropdown-item "></a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle " data-bs-toggle="dropdown">Transversales</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="programacion_transversal.php" class="dropdown-item ">Operarios</a>
                        <a href="programacion_transversalt.php" class="dropdown-item">Técnicos</a>
                        <a href="programacion_transversalte.php" class="dropdown-item">Técnologos</a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Reporte</a>
                    <div class="dropdown-menu bg-light m-0">
                    <a href="reporte_fichas.php" class="dropdown-item ">Formaciones Asignandas</a>
                        <a href="reporte_transversales.php" class="dropdown-item ">Transversales Asignadas</a>
                        <a href="#" class="dropdown-item "></a>
                    </div>
                </div>
            </div>
            <a href="includes/salir.php" class="btn btn-primary px-3 d-none d-lg-block">Cerrar Sesión</a>
    </nav>
    <!-- Navbar End -->
    
    <div class="container-xxl py-5">
        <div class="container-fluid" style="border-top: 1px solid #E1E1E1; padding: 20px; ">
            <div class="row gy-5 gx-4">
              
                    
                <h4 align="center">Programación Transversales - Formaciones Operario</h4> 
                           
                </div>
            </div>
        </div>
    </div>  
    <div class="container">
        <div class="row">
            <div class="col-3">
                <strong> F. OPERARIO</strong>
            </div>
            <div class="col-4">
                <strong>  TRIMESTRE I</strong>
            </div>  
            <div class="col-4">
                <strong>TRIMESTRE II</strong>
            </div>    
        </div>
        <br><br>
        <div class="col">
            <div class="card shadow-sm">
                <div class="row">
                    <div class="col-3">
                    <strong><p class="text-success">TRANSVERSAL</p></strong>
                    </div>
                    <div class="col-4">
                        <a href="" class="text-danger" onclick="window.open('projects/trans_oper_comunica.php?id=<?php echo '3'?>','','width= 1200,height=880');void(null);"><strong>  Comunicaciones</strong></a>
                    </div>  
                    <div class="col-4">
                    <a href="" class="text-danger" onclick="window.open('trans_oper_sst.php?id=<?php echo '11'?>','','width= 1200,height=880');void(null);"><strong>  SST</strong></a>
                    </div>    
                    
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card shadow-sm">
                <div class="row">
                    <div class="col-3">
                    <strong><p class="text-success">CLAVE</p></strong>
                    </div>
                    <div class="col-4">
                    <a href="" class="text-danger" onclick="window.open('trans_oper_cf.php?id=<?php echo '11'?>','','width= 1200,height=880');void(null);"><strong>  Cultura Fisica</strong></a>
                    </div>  
                    <div class="col-4">
                    <a href="" class="text-danger" onclick="window.open('trans_oper_dft.php?id=<?php echo '11'?>','','width= 1200,height=880');void(null);"><strong>  DFT</strong></a>
                    </div>    
                     
                </div>
            </div>
        </div>
            
    <br><br>
    <div class="col">
            <div class="card shadow-sm">
                <div class="row">
                    <div class="col-3">
                    <strong><p class="text-success">GERENTE GRUPO</p></strong>
                    </div>
                    <div class="col-4">
                    <a href="" class="text-danger" onclick="window.open('trans_oper_cf.php?id=<?php echo '11'?>','','width= 1200,height=880');void(null);"><strong>  Cultura Fisica</strong></a>
                    </div>  
                    <div class="col-4">
                    <a href="" class="text-danger" onclick="window.open('trans_oper_dft.php?id=<?php echo '11'?>','','width= 1200,height=880');void(null);"><strong>  DFT</strong></a>
                    </div>    
                     
                </div>
            </div>
        </div>

    <div>

   


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    <script src="js/jquery.min.js"></script>
   
   <script type="text/javascript">
    function alerta(texto) {
       alert(texto);
    }
</script>

</body>

</html>
