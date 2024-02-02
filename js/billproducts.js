//Variable que mantiene el estado visible del carrito
var carritoVisible = false;

//Espermos que todos los elementos de la pàgina cargen para ejecutar el script
if (document.readyState == "loading") {
  document.addEventListener("DOMContentLoaded", ready);
} else {
  ready();
}

function ready() {
  //funcionalidad paraa los botones de eliminar (btn-eliminar) de la factura
  var botonesEliminarItem = document.getElementsByClassName("btn-eliminar");
  for (var i = 0; i < botonesEliminarItem.length; i++) {
    var button = botonesEliminarItem[i];
    button.addEventListener("click", eliminarItemFactura);
  }
  //funcionalidad para el boton sumar cantidad (additionAmount)
  var botonesSumarCantidad = document.getElementsByClassName("additionAmount");
  for (var i = 0; i < botonesSumarCantidad.length; i++) {
    var button = botonesSumarCantidad[i];
    button.addEventListener("click", sumarCantidad);
  }
  //funcionalidad para el buton restar cantidad(subtractionAmount)
  var botonesRestarCantidad =
    document.getElementsByClassName("subtractionAmount");
  for (var i = 0; i < botonesRestarCantidad.length; i++) {
    var button = botonesRestarCantidad[i];
    button.addEventListener("click", restarCantidad);
  }
  //funcionalidad para el boton Agregar a la factura
  var botonesAgregarAlaFactura = document.getElementsByClassName("btn-addbill");
  for (var i = 0; i < botonesAgregarAlaFactura.length; i++) {
    var button = botonesAgregarAlaFactura[i];
    button.addEventListener("click", agregarAlaFacturaClicked);
  }
}

function eliminarItemFactura(event) {
  var buttonClicked = event.target;
  buttonClicked.parentElement.parentElement.remove();
  //Actualizamos el total del carrito
  actualizarTotalCarrito();
}
function sumarCantidad(event) {
  var buttonClicked = event.target;
  var selector = buttonClicked.parentElement;
  console.log(selector.getElementsByClassName("amount")[0].value);
  var cantidadActual = selector.getElementsByClassName("amount")[0].value;
  cantidadActual++;
  selector.getElementsByClassName("amount")[0].value = cantidadActual;
  actualizarTotalCarrito();
}
//Resto en uno la cantidad del elemento seleccionado
function restarCantidad(event) {
  var buttonClicked = event.target;
  var selector = buttonClicked.parentElement;
  console.log(selector.getElementsByClassName("amount")[0].value);
  var cantidadActual = selector.getElementsByClassName("amount")[0].value;
  cantidadActual--;
  if (cantidadActual >= 1) {
    selector.getElementsByClassName("amount")[0].value = cantidadActual;
    actualizarTotalCarrito();
  }
}

//Funciòn que controla el boton clickeado de agregar al carrito
function agregarAlaFacturaClicked(event) {
  var button = event.target;
  var item = button.parentElement;
  var titulo = item.getElementsByClassName("nameproduct")[0].innerText;
  var precio = item.getElementsByClassName("precio-item")[0].innerText;
  console.log(precio);

  agregarItemAlaFactura(titulo, precio);

  hacerVisibleFactura();
}

//Funciòn que agrega un item al carrito
function agregarItemAlaFactura(titulo, precio) {
  var item = document.createElement("div");
  item.classList.add = "productos";
  var itemsCarrito = document.getElementsByClassName("bill")[0];

  //controlador para validar que el producto a ingresar no se encuentra registrado en la factura
  var nameitembill = itemsCarrito.getElementsByClassName(
    "nameProductBill"
  );
  for (var i = 0; i < nameitembill.length; i++) {
    if (nameitembill[i].innerText == titulo) {
      alert("El producto ya se encuentra en la fcatura");
      return;
    }
  }

  var itemContentBill = `
      <div class="bill">
          <div class="billproducts">
              <span class="nameProductBill">${titulo}</span>
              <div class="selectAmount">
              <i class="fa-solid fa-minus subtractionAmount"></i>
              <input type="text" value="1" class="amount" disable>
              <i class="fa-solid fa-plus additionAmount"></i>
              </div>
              <span class="valor">${precio}</span>
          </div>
          <button class="btn-eliminar">
              <i class="fa-solid fa-trash"></i>
          </button>
      </div>
  `;
  item.innerHTML = itemContentBill;
  itemsCarrito.append(item);

  //Agregamos la funcionalidad eliminar al nuevo item
  item
    .getElementsByClassName("btn-eliminar")[0]
    .addEventListener("click", eliminarItemFactura);

  //Agregmos al funcionalidad restar cantidad del nuevo item
  var botonRestarCantidad = item.getElementsByClassName("restar-cantidad")[0];
  botonRestarCantidad.addEventListener("click", restarCantidad);

  //Agregamos la funcionalidad sumar cantidad del nuevo item
  var botonSumarCantidad = item.getElementsByClassName("sumar-cantidad")[0];
  botonSumarCantidad.addEventListener("click", sumarCantidad);

  //Actualizamos total
  actualizarTotalCarrito();
}
