<?php
include_once("../DB/coneDB.php");
$rol=$_POST["rol"];
$doc=$_POST["doc"];
$cont=MD5($_POST["contr"]);
$con= "SELECT * FROM usuario WHERE idrol='$rol' AND Doc='$doc' and Contrasena='$cont' and idest=1";
$query= mysqli_query($conexion, $con);
$nr = mysqli_num_rows($query);
if ($nr==1){
   session_start();
   if ($rol==1 ){
        $_SESSION['usuario'] = $doc;


        header("location: ../V/ADM.php");      
   }
             
else if ($rol==2){
            $_SESSION['usuario'] = $doc;


    header("location: ../V/Emp.php");
     
   } 
}
else {
    echo "<script>alert('Rol, nombre o clave incorrecto.'); window.location= '../index.html';</script>";
}

?>