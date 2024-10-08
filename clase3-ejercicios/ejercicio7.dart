void main() {
  /*Consigna
Crea una lista de usuarios con su nombre y edad. El programa debe filtrar los usuarios mayores de 30 años y mostrarlos.

Datos
;*/
  List<Map<String, dynamic>> usuarios = [
    {'nombre': 'Ana', 'edad': 25},
    {'nombre': 'Luis', 'edad': 35},
    {'nombre': 'Carlos', 'edad': 40},
    {'nombre': 'Juan', 'edad': 28},
    {'nombre': 'Maria', 'edad': 32},
    {'nombre': 'Laura', 'edad': 29},
    {'nombre': 'Pablo', 'edad': 45},
    {'nombre': 'Sofia', 'edad': 27},
    {'nombre': 'Alberto', 'edad': 33},
    {'nombre': 'Isabel', 'edad': 41}
  ];

  List<Map<String, dynamic>> usuariosMayores30 = mayoresDeEdad(usuarios);

  //listar usuarios mayores de 30 años
  if (usuariosMayores30.isEmpty) {
    print('No hay usuarios mayores de 30 años');
  } else {
    for (var usuario in usuariosMayores30) {
      print('${usuario['nombre']} - ${usuario['edad']}');
    }
  }
}

List<Map<String, dynamic>> mayoresDeEdad(List<Map<String, dynamic>> usuarios) {
  List<Map<String, dynamic>> usuariosMayores = [];
  if (usuarios.isEmpty) {
    print('No hay usuarios registrados');
  } else {
    // Filtrar usuarios mayores de 30 años
    usuariosMayores = usuarios.where((user) => (user['edad']) > 30).toList();
  }
  return usuariosMayores;
}
