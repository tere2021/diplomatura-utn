//Classes
void main(List<String> arguments) {
/*a. Busca las clases que puedes usar en DART para realizar varias operaciones y que
metodos son los más útiles, Comparte en el foro las que te resulten más interesantes con
tus compañeros.*/

//Clase DateTime
  DateTime ahora = DateTime.now();
  print('Fecha y hora actuales: $ahora');

  // Métodos útiles de la clase DateTime
  DateTime fechaFutura = ahora.add(Duration(days: 5));
  print('Fecha y hora en 5 días: $fechaFutura');

  DateTime fechaPasada = ahora.subtract(Duration(days: 5));
  print('Fecha y hora hace 5 días: $fechaPasada');

  // Comparar fechas
  if (fechaFutura.isAfter(ahora)) {
    print('La fecha futura es después de la fecha actual.');
  } else {
    print('La fecha futura no es después de la fecha actual.');
  }

  // Formatear la fecha
  String fechaFormateada = '${ahora.day}/${ahora.month}/${ahora.year}';
  print('Fecha actual formateada: $fechaFormateada');
}
