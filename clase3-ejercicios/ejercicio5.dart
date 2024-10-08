void main() {
  /* Consigna:
  Crea un programa que permita al usuario convertir una temperatura de grados Celsius a Fahrenheit y viceversa.
  (Crear una función para cada operación)
  */

  // Función para convertir de Celsius a Fahrenheit
  double convertirCelsiusAFahrenheit(double gradosCelsius) {
    return (gradosCelsius * 9 / 5) + 32;
  }

  // Función para convertir de Fahrenheit a Celsius
  double convertirFahrenheitACelsius(double gradosFahrenheit) {
    return (gradosFahrenheit - 32) * 5 / 9;
  }

  // Menu
  print('Tipo de operación:\n1-Celsius a Fahrenheit\n2-Fahrenheit a Celsius');

  double celsius = 30;
  double fahrenheit = 50;

  // Convertir de Celsius a Fahrenheit
  double resultadoFahrenheit = convertirCelsiusAFahrenheit(celsius);
  print('$celsius °C es igual a $resultadoFahrenheit °F');

  // Convertir de Fahrenheit a Celsius
  double resultadoCelsius = convertirFahrenheitACelsius(fahrenheit);
  print('$fahrenheit °F es igual a $resultadoCelsius °C');
}
