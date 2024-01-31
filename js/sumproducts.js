/* 
function sumar() {
  var total = 0;

  $(".monto").each(function () {
    if (isNaN(parseFloat($(this).val()))) {
      total += 0;
    } else {
      total += parseFloat($(this).val());
    }
  });

  //alert(total);
  document.getElementById("spTotal").innerHTML = total;
}

<span>Valor #1</span>
<input type="number" id="amount" class="monto" />
<input type="number" id="txt_campo_1" class="monto" onkeyup="sumar();" />
<br />

<span>Valor #2</span>
<input type="number" id="txt_campo_2" class="monto" onkeyup="sumar();" />
<br />

<span>Valor #3</span>
<input type="number" id="txt_campo_3" class="monto" onkeyup="sumar();" />
<br />

<span>El resultado es: </span> <span id="spTotal"></span>

 */