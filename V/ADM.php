<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../styles/ADM12.css">
    <link rel="stylesheet" type="text/css" href="../styles/BARADM2.css">
    <link rel="icon" type="image/png" href="../IMG/San Jose.png" sizes="any">
    <script src="https://kit.fontawesome.com/41bcea2ae3.js" crossorigin="anonymous"></script>
    
    <title>CPSJ</title>
</head>
<body id="body">
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
                    <i class="fas fa-file-alt" title="Portafolio"></i>
                    <h4>Facturas</h4>
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
                    <i class="far fa-file-alt" title="Cursos"></i>
                    <h4>Clientes</h4>
                </div>
            </a>
            <a href="Registro.php">
                <div class="option">
                    <i class="far fa-file-alt" title="Cursos"></i>
                    <h4>Registrar</h4>
                </div>
            </a>
        </div>
    </div>

    <div class="Titulo">
        Cacharreria y papeleria del san jose
    </div>
        <?php
         
         $conexion = new mysqli("localhost","root","","proyneg");
         $consulta= "SELECT * FROM tipprod";
         $uni=mysqli_query($conexion, $consulta);
         
        ?>
        
        <div class="contenedor_Principal">
          <?php
          while ($prod=mysqli_fetch_array($uni))
          {
          ?>
            <a href="busprd.php?id=<?php echo $prod['idcateg'];?>" class="Categories"><?php echo "".$prod['idcateg'];?>  </a>
          <?php
          }
          ?>
       </div>
  <script src="../C/main.js" charset="UTF-8"></script>
</body>
</html>