void main() {
  /*a. Prueba jugar con los operadores de incremento, con sufijos & prefijos en números y
variables, luego imprimelos en pantalla para ver cómo se ejecutan y probar sus funciones.*/

  int numero = 53;
  // Prefijo de incremento
  print(
      'Operador de Incremento ++ - Prefijo ${++numero}'); //Primero incrementa  y luego devuelve ese valor
  //// Sufijo de incremento
  print(
      'Operador de Incremento ++ - Sufijo ${numero++}'); // Primero devuelve el valor actual  y luego incrementa

  // Imprimir el valor actual de 'numero'
  print(numero);

  int numero1 = 35;
  // Prefijo de decremento
  print(
      'Operador de Decremento -- • Prefijo ${--numero1}'); //Decrementa primero y luego devuelve el valor actualizado.
  // Sufijo de decremento
  print(
      'Operador de Decremento -- • Sufijo ${numero1--}'); // Devuelve el valor original y luego la decrementa.
  // Imprimir el valor actual de 'numero1'
  print(numero1);

  /*b. Declara una variable de tipo booleano y otra con tipo String con un texto dentro, ejecuta
una operación de prueba de tipo para en la variable de tipo booleano y asigna el resultado
de esa prueba de tipo. Prueba chequear por el tipo igual a texto, igual a numero, o
cualquier otro tipo valido en Dart. Imprime en la consola los resultados.*/

  // Declaración de variables
  bool encontrado = false;
  String texto = "Hola";

  // Operación de prueba de tipo sobre la variable booleana
  bool encontradoesString = encontrado is String;
  bool encontradoesInt = encontrado is int;
  bool encontradoesBool = encontrado is bool;

// Imprime los resultados en la consola
  print("¿encontrado es de tipo String? $encontradoesString");
  print("¿encontrado es de tipo int? $encontradoesInt");
  print("¿encontrado es de tipo bool? $encontradoesBool");

  // Operación de prueba de tipo sobre la variable String
  bool textoEsString = texto is String;
  bool textoEsBool = texto is bool;

  // Imprime los resultados de la variable String en la consola
  print("¿texto es de tipo String? $textoEsString");
  print("¿texto es de tipo bool? $textoEsBool");
}
