<?php
$codProd = $_POST["codProd"];
$nomProd = $_POST["nomProd"];
$catProd = $_POST["catProd"];
$Val = $_POST["Val"];
$archive = $_POST["archive"];

$con= new mysqli("localhost","root","","proyneg");
$sql= "INSERT INTO producto values('$codProd', '$nomProd' , '$Val', '$catProd' , '$archive', 1)"; 
$resultado=mysqli_query ($con,$sql);
mysqli_close($con);
if($resultado){
    header("location:../V/ADM.php");
}
else{
    echo"<script>alert('No se pudo registrar el producto');window.location='../V/ADM.php'</script>";
}
?>