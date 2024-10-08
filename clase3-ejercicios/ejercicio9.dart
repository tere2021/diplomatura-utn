void main() {
  /*
Consigna:
Crea una lista de tareas, cada una con un título y una prioridad (alta, media o baja). 
Permite al usuario filtrar las tareas por su prioridad. (Fijensé que es muy parecido al 6).

Datos:
];*/

  List<Map<String, String>> tareas = [
    {'titulo': 'Estudiar', 'prioridad': 'alta'},
    {'titulo': 'Limpiar', 'prioridad': 'baja'},
    {'titulo': 'Trabajar', 'prioridad': 'media'},
    {'titulo': 'Comprar comida', 'prioridad': 'alta'},
    {'titulo': 'Ejercicio', 'prioridad': 'baja'},
    {'titulo': 'Leer', 'prioridad': 'media'},
    {'titulo': 'Cocinar', 'prioridad': 'baja'},
    {'titulo': 'Jugar videojuegos', 'prioridad': 'media'},
    {'titulo': 'Dormir', 'prioridad': 'alta'},
    {'titulo': 'Visitar amigos', 'prioridad': 'media'},
  ];

  List<Map<String, String?>> tareasPorPrioridad =
      tareasFiltradas(tareas, 'media');

  //imprimir tareas segun prioridad
  if (tareasPorPrioridad.isEmpty) {
    print('No hay tareas para esa prioridad');
  } else {
    for (var tarea in tareasPorPrioridad) {
      print('${tarea['titulo']}: ${tarea['prioridad']}');
    }
  }
}

List<Map<String, String>> tareasFiltradas(
    List<Map<String, String>> tareas, String prioridadBuscada) {
  // Filtrar las tareas por prioridad
  return tareas
      .where((tarea) => tarea['prioridad'] == prioridadBuscada)
      .toList();
}
