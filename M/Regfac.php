<?php
require_once ("../DB/coneDB.php");
$fac=$_POST["fac"];
$prov= $_POST["prov"];
$Fecha= $_POST["Fecha"];
$archivo=$_POST["archivo"];
$sql="INSERT INTO Factura(Factura, Proveedor, fecha, Archivo)
VALUES('$fac', '$prov',  '$Fecha', '$archivo')";
$resultado=mysqli_query ($conexion,$sql) ;
mysqli_close($conexion);
if($resultado){
    echo "<script>alert('La factura se cargo correctamente'); window.location= '../V/Facturas.php';</script>";
}
else {
    echo "<script>alert('No se pudo realizar la carga de la factura'); window.location= '../V/RegFac.php';</script>";
}  
?>