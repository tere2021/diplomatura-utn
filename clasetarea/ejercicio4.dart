import 'dart:math';

void main() {
  /*a. Busca en la información de la documentación de DART cuales son sus bibliotecas
nativas, y para que son útiles. Prueba hacer una importación de alguna que te llame la
atención y juega con sus funcionalidades.*/

// Generar un número aleatorio entre 0 y 100
  var random = Random();
  int numeroAleatorio = random.nextInt(101);
  print('Número aleatorio generado entre 0-100: $numeroAleatorio');

  // Calcular la raíz cuadrada
  double raizCuadrada = sqrt(numeroAleatorio);
  print('Raíz cuadrada del numero aleatorio $numeroAleatorio: $raizCuadrada');

  // Cálculo de la potencia
  double base = 2;
  int exponente = 3;

  double resultado = pow(base, exponente).toDouble();
  print('Cálculo de la potencia: $base elevado a la $exponente es $resultado');
}
