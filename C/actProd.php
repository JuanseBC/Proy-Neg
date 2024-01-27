<?php
require_once("../DB/coneDB.php");
$codProd = $_POST["codProd"];
$nomProd = $_POST["nomProd"];
$catProd = $_POST["catProd"];
$Stock = $_POST["stock"];
$Val = $_POST["Val"];
$archive = $_POST["archive"];

$sql = "UPDATE producto SET  idprod='$codProd', nomprod='$nomProd', valprod='$Val', idcateg='$catProd', stock='$Stock', archivo='$archive' WHERE idprod='$codProd'";
$query = mysqli_query($conexion, $sql);

if ($query) {
    echo"<script>alert('Se actualizaron los datos');window.location='../V/ADM.php'</script>";
}
else {
    echo"<script>alert('No se pudo actualizar la información del producto');window.location='../V/ADM.php'</script>";
}
?>