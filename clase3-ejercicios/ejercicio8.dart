void main() {
  /*
Consigna:
Crea un inventario de productos y sus cantidades. 
El programa debe permitir actualizar la cantidad de un producto, sumando o restando unidades.
};*/
  Map<String, int> inventario = {
    'Laptop': 10,
    'Smartphone': 25,
    'Televisor': 5,
    'Lavadora': 8,
    'Mesa': 12,
    'Silla': 20,
    'Reloj': 50,
    'Bolso': 15,
    'Cafetera': 7,
    'Lámpara': 18
  };
  print('Inventario Inicial: ');

  inventario.forEach((producto, cantidad) {
    print('$producto: $cantidad');
  });

  print('Actualización de Inventario:\n 1-Sumar cantidad\n 2-Restar cantidad');

  //actualizo la cantidad de un producto
  actualizarInventario(inventario, 'Bolso', 6, 1);
}

void actualizarInventario(
    Map<String, int?> inventario, String producto, int cantidad, int opcion) {
  bool encontrado = inventario.containsKey(producto);
  if (encontrado) {
    switch (opcion) {
      case 1: //sumar
        // Sumar la cantidad al producto
        inventario[producto] = inventario[producto]! + cantidad;
        break;
      case 2: // Restar
        // Verificar si hay suficiente cantidad para restar
        if (inventario[producto]! >= cantidad) {
          inventario[producto] = inventario[producto]! - cantidad;
        } else {
          print('No hay unidades suficientes para restar');
        }
        break;
      default:
        print('Opción no valida');
    }
  } else {
    print('No se encontró el producto');
  }
  print('Inventario actualizado:');
  print(inventario);
}
