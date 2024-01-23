<?php
require_once ("../DB/coneDB.php");
$codProd = $_POST["codProd"];
$nomProd = $_POST["nomProd"];
$catProd = $_POST["catProd"];
$Val = $_POST["Val"];
$archive = $_POST["archive"];

$sql="UPDATE producto SET  idprod='$codProd', nomprod='$nomProd', valprod='$Val', idcateg='$catProd', archivo='$archive' WHERE idprod='$codProd'";
$query=mysqli_query($conexion,$sql);

    if($query){
        Header("Location: ../V/ADM.php");
    }
?>