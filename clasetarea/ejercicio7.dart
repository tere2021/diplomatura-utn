// REGISTROS
void main() {
  // a. Prueba declarar y usar Registros en tus funciones.

  var registroSuma = realizarOperacion(5, 3, 'suma');
  var registroResta = realizarOperacion(5, 3, 'resta');

  print(
      'Registro Suma: resultado=${registroSuma.$1}, mensaje=${registroSuma.$2}');
  print(
      'Registro Resta: resultado=${registroResta.$1}, mensaje=${registroResta.$2}');

  // b. Crea Registros y compara sus valores con condicionales para ver cómo se comportan entre sí y qué resultado producen.

  if (registroSuma.$1 > registroResta.$1) {
    print('La suma es mayor que la resta.');
  } else if (registroSuma.$1 < registroResta.$1) {
    print('La resta es mayor que la suma.');
  } else {
    print('La suma y la resta son iguales.');
  }
}

// Función que realiza la operación y devuelve un registro
(int, String) realizarOperacion(int a, int b, String operacion) {
  if (operacion == 'suma') {
    int resultado = a + b;
    return (resultado, 'Suma completada');
  } else if (operacion == 'resta') {
    int resultado = a - b;
    return (resultado, 'Resta completada');
  } else {
    return (0, 'Operación no válida');
  }
}
