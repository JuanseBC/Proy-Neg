<?php
require_once("../DB/coneDB.php");
$prod = $_GET['id1'];
$sql = "UPDATE producto SET idest = 2 Where idprod = '$prod'";
$inactivate = mysqli_query($conexion, $sql);
if ($inactivate) {
    echo "<script>alert('Se inactivo el producto');window.location='../V/ADM.php'</script>";
} else {
    echo "<script>alert('No se pudo inactivar el producto');window.location='../V/ADM.php'</script>";
}

?>