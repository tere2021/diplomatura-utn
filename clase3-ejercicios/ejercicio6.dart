void main() {
  /*Consigna:
Crea un programa que permita al usuario buscar productos 
por su categoría dentro de un mapa que contiene productos y sus categorías.

Datos:*/
  Map<String, String> productos = {
    'Notebook': 'Tecnologia',
    'Smartphone': 'Tecnologia',
    'Televisor': 'Electrodomesticos',
    'Lavadora': 'Electrodomesticos',
    'Mesa': 'Muebles',
    'Silla': 'Muebles',
    'Reloj': 'Accesorios',
    'Bolso': 'Accesorios',
    'Cafetera': 'Electrodomesticos',
    'Lámpara': 'Decoracion',
  };
  String categoriaSeleccionada = "Accesorios";
  Map<String, String> productosCategoria =
      filtrarProductosPorCategoria(productos, categoriaSeleccionada);

  // Mostrar los productos filtrados
  if (productosCategoria.isEmpty) {
    print(
        'No se encontraron productos en la categoría $categoriaSeleccionada.');
  } else {
    print('Productos en la categoría $categoriaSeleccionada:');
    productosCategoria.forEach((clave, valor) {
      print('$clave: $valor');
    });
  }
}

Map<String, String> filtrarProductosPorCategoria(
    Map<String, String> productos, String categoria) {
  // mapa para los productos filtrados
  Map<String, String> productosFiltrados = {};

  // Filtrar  productos de la categoría seleccionada
  productos.forEach((clave, valor) {
    if (valor == categoria) {
      productosFiltrados[clave] = valor;
    }
  });

  return productosFiltrados;
}
