<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
    integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="../styles/generatebill5.css" />
  <script src="../js/billproducts.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <title>Document</title>
</head>

<body>
  <div class="containerGlobal">

    <div class="containerLeft">
      <div class="searchproduct">
        <input type="search">
      </div>
      <div class="containerproduct">
        <div class="productos">
          <span class="nameproduct">Box Engasse</span>
          <img src="../IMG/Juego imusa.png" alt="" class="img-item" />
          <span class="precio-item">$15.000</span>
          <button class="btn-addbill">Agregar a la factura</button>
        </div>
      </div>
    </div>
    <div class="containerRigth">
      <div class="containerBill">
        <div class="title">
          <text name="" id="" cols="30" rows="10"> FACTURA</text>
        </div>
        <div class="bill">
          <!-- <div class="selectAmount">
          <i class="fa-solid fa-minus subtractionAmount"></i>
            <input type="text" value="1" class="amount">
            <i class="fa-solid fa-plus additionAmount"></i>
          </div> -->
        </div>
        <div class="total">
          <input type="text" value="Valores">
          <input type="text" value="15000">
        </div>
      </div>
    </div>
  </div>
</body>

</html>