<?php
include ("../DB/coneDB.php");
$rol=$_POST["rol"];
$doc=$_POST["doc"];
$cont=MD5($_POST["contr"]);
$query= mysqli_query($conexion, "SELECT * FROM proyneg.usuario  WHERE  idRol=$rol AND Doc = '$doc'  AND Contraseña ='$cont' and idEst=1");
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