void main() {
  /*Crea un programa de consola que simule una calculadora básica. 
El usuario puede seleccionar entre sumar, restar, multiplicar o dividir dos números mediante un menú.
Nota: Una posible solución (aunque pueden generar otras), crear una función que reciba los datos, 
y que a su vez evalúe el tipo de operación en un Switch.
*/
  void calculadora(int operacion, double a, double b) {
    switch (operacion) {
      case 1:
        print('Suma: ${a + b}');
        break;
      case 2:
        print('Resta: ${a - b}');
        break;
      case 3:
        print('Multiplicación:  ${a * b}');
        break;
      case 4:
        if (b != 0) {
          print('División:  ${a / b}');
        } else {
          print('Error: División por cero no permitida.');
        }
        break;
      default:
        print('Opción no válida');
    }
  }

  // menú de la calculadora
  print('Calculadora:\n1-Suma\n2-Resta\n3-Multiplicación\n4-División');
  calculadora(1, 10, 5); // Suma
  calculadora(2, 10, 5); // Resta
  calculadora(3, 10, 5); // Multiplicación
  calculadora(4, 10, 5); // División
  calculadora(4, 10, 1.5); // División con un número decimal
  calculadora(4, 10, 0); // División por cero
}
