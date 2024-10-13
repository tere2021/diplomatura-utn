//// Manejo de Errores

void main() {
  /*a. Crea una función que se llame errorHandle()
- Debe tener internamente una estructura TRY CATCH,
- Debe recibir cómo parametro un mensaje de error “Error o Excepción Encontrado”.
- Dentro del TRY debe arrojar una excepción THROW, con el mensaje del parametro
que se incluyó en la ejecución de la función.
- Dentro del CATCH Imprime en pantalla con el parametro (e) el mensaje de la
Excepción arrojada.*/

  errorHandle("Error o Excepción Encontrado");

/*b. Declara una variable de tipo booleano llamada "esEstudiante" y asígnale el valor
verdadero. Luego, declara una variable de tipo doble llamada "promedio" y asígnale un
valor de 8.5. Imprime ambos valores en la consola.
*/
  bool esEstudiante = true;
  double promedio = 8.5;

  // Imprimir los valores en la consola
  print("Es Estudiante: $esEstudiante");
  print("Promedio: $promedio");
}

// Función que maneja errores
void errorHandle(String mensaje) {
  try {
    // Arrojar una excepción
    throw Exception(mensaje);
  } catch (e) {
    // Imprimir el mensaje de la excepción
    print("Se capturó una excepción: $e");
  }
}
