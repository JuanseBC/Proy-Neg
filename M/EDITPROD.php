<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="../IMG/San Jose.png" sizes="any">
    <link rel="stylesheet" type="text/css" href="../styles/editprod.css">
    <title>Actualización datos</title>
</head>
<body>
<?php
require_once ("../DB/coneDB.php");
 $prod = $_GET['id'];
 $sql= "SELECT * from producto where idprod = '$prod'";

 $query=mysqli_query($conexion,$sql);

$result=mysqli_fetch_array($query);
/*Busuqeda de categorias*/ 
$consulta= "Select * from tipprod";
$filas=mysqli_query($conexion, $consulta);
?>
  <form id="form" method="post" action="../C/actProd.php">
    <div class="form">
        <h1>Registro productos</h1>
        <div class="grupo">
        <input type="text" name="codProd" id="name" value="<?php echo $result['idprod']  ?>"required><span class="barra"></span>
        <label for="">Codigo del producto</label>
    </div>
    <div class="grupo">
        <input type="text" name="nomProd" id="name" value="<?php echo $result['nomprod']  ?>" required><span class="barra"></span>
        <label for="">Nombre del producto</label>
    </div>
    
    <div class="grupo">
        <input type="number" name="Val" id="name" value="<?php echo $result['valprod']  ?>" required><span class="barra"></span>
        <label for="">Valor</label>
    </div>
    <div class="grupo">
        <select type="text" name="catProd" id="name"  class ="cat" required> 
            <option selected disabled value="">
                    Seleccione la categoria
                  </option>
                  <?php
         while ($Rol=mysqli_fetch_array($filas))
         {
           echo "<option value='".$Rol['idcateg']."'>" . $Rol["idcateg"] . "</option>";
         }
       ?>
            </select>
    </div> 
        <div class="grupo">
            <input class="archive" type="file" name="archive" id="name" required>
        </div>
        <div>
            <button type="submit">Actualizar</button>
            <a href="../V/ADM.php" class="btnReg">Regresar</a>
        </div>
</div>

  </form>
  
</body>
</html>

