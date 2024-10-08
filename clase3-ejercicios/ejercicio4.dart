void main() {
  /*Consigna:
Crea una lista de productos con nombre y precio. 
Filtra los productos que cuestan más de 50 y muestra los resultados.

Posible lista de datos (Noten el "dynamic")
*/

  List<Map<String, dynamic>> productos = [
    {'nombre': 'Producto 1', 'precio': 30},
    {'nombre': 'Producto 2', 'precio': 60},
    {'nombre': 'Producto 3', 'precio': 80},
    {'nombre': 'Producto 4', 'precio': 100},
    {'nombre': 'Producto 5', 'precio': 95.5}
  ];

  //fs para filtrar los productos
  List<Map<String, dynamic>> productosCaros =
      listarProductosMayoresCincuenta(productos);

  mostrarLista(productosCaros);
}

List<Map<String, dynamic>> listarProductosMayoresCincuenta(
    List<Map<String, dynamic>> productos) {
  List<Map<String, dynamic>> productosCaros = [];

  //verificar si la lista esta vacia
  if (productos.isEmpty) {
    print('No hay productos registrados');
    return productosCaros; // retornar lista vacía si no hay productos
  }

  // filtrar productos precio > 50
  for (var producto in productos) {
    if (producto['precio'] > 50) {
      productosCaros.add(producto);
    }
  }

  return productosCaros;
}

void mostrarLista(List<Map<String, dynamic>> productos) {
  if (productos.isEmpty) {
    print('No hay productos que cuesten más de 50.');
  } else {
    print('Listado de productos que cuestan más de 50:\n');
    for (var producto in productos) {
      print('${producto['nombre']} - \$${producto['precio']}');
    }
  }
}
