<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../styles/busprod4.css">
    <link rel="stylesheet" type="text/css" href="../styles/BARADM3.css">
    <script src="https://kit.fontawesome.com/41bcea2ae3.js" crossorigin="anonymous"></script>
    <link rel="icon" type="image/png" href="../IMG/San Jose.png" sizes="any">
    <title>Tecnologia</title>
</head>

<body>
    <div class="contenedor_global">
        <div class="CuaTabl" id="body">
            <header>
                <div class="icon__menu">
                    <i class="fas fa-bars" id="btn_open"></i>
                </div>
            </header>
            <div class="menu__side" id="menu_side">
                <div>
                    <IMG class="img" type="icon" SRC="../IMG/San Jose.png" style="width: 60px;  margin: 3px;">
                </div>
                <div class="options__menu">
                    <a href="ADM.php" class="selected">
                        <div class="option">
                            <i class="fas fa-home" title="Inicio"></i>
                            <h4>Inicio</h4>
                        </div>
                    </a>
                    <a href="Facturas.php">
                        <div class="option">
                            <i class="far fa-file-alt" title="Portafolio"></i>
                            <h4>Facturas</h4>
                        </div>
                    </a>
                    <a href="generateBill.php">
                        <div class="option">
                            <i class="fas fa-file-alt" title="Cursos"></i>
                            <h4>Generar factura</h4>
                        </div>
                    </a>
                    <a href="Empleados.php">
                        <div class="option">
                            <i class="far fa-file-alt" title="Cursos"></i>
                            <h4>Empleados</h4>
                        </div>
                    </a>
                    <a href="Clientes.php">
                        <div class="option">
                            <i class="fas fa-file-alt" title="Cursos"></i>
                            <h4>Clientes</h4>
                        </div>
                    </a>
                    <a href="Registro.php">
                        <div class="option">
                            <i class="far fa-file-alt" title="Cursos"></i>
                            <h4>Registrar</h4>
                        </div>
                    </a>
                    <a href="../M/logOut.php">
                        <div class="salir">
                            <i><img class="logOut" src="../IMG/salir.png" alt="Salir"></i>
                            <h4>Salir</h4>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="contenedor_main_header">
            <div class="Registrar">
                <a href="regProd.php"><button id="btn">Registrar producto</button></a>
            </div>
        </div>
        <div class="contenedortabla">
            <table class="table">
                <tr>
                    <td class="text">Codigo</td>
                    <td class="text">Producto</td>
                    <td class="text">Stock</td>
                    <td class="text">Valor</td>
                    <td class="text">Imagen</td>
                    <td class="text">Editar </td>
                    <td class="text">Eliminar</td>
                </tr>
                <?php
                $prod = $_GET["id"];
                require_once("../DB/coneDB.php");
                $consulta = "Select * from producto where idcateg='$prod' and idest='1'";
                $filas = mysqli_query($conexion, $consulta);
                while ($Producto = mysqli_fetch_array($filas)) {
                    echo "<tr class='text'> <th>" . $Producto["idprod"] . "</th>";
                    echo "<th class='text'>" . $Producto["nomprod"] . "</th>";
                    echo "<th class='text'>" . $Producto["stock"] . "</th>";
                    echo "<th class='text'>" . $Producto["valprod"] . "</th>";
                    echo "<th class='text'>" . $Producto["archivo"] . "</th>";
                    ?>
                    <th><a href="../M/EDITPROD.php?id=<?php echo $Producto['idprod'] ?>" id="btn">Editar</a></th>
                    <th><a href="../C/Inactivar.php?id1=<?php echo $Producto['idprod'] ?>" id="btn">Inactivar</a></th>
                    <tr>
                    <?php }
                ?>
            </table>
            <script src="../C/main.js" charset="UTF-8"></script>
        </div>
    </div>
</body>

</html>