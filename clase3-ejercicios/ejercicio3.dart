void main() {
  /* Consigna:
Crea una lista de tareas donde se pueda agregar, mostrar y eliminar tareas. 
Cada tarea tendrá un título y una descripción. Permitir eliminar por nombre de tarea.
 */

  List<Map<String, String>> tareas = [
    {'titulo': 'Comprar comida', 'descripcion': 'Ir al supermercado'},
    {'titulo': 'Estudiar', 'descripcion': 'Repasar Flutter'},
  ];

  agregarTarea(tareas, 'Running', 'calentamiento 10 min y fartlek');
  eliminarTarea(tareas, 'Comprar comida');
  mostrarTareas(tareas);
}

void agregarTarea(
    List<Map<String, String>> tareas, String tarea, String descripcion) {
  bool tareaBuscada = false;

  //verificar si la tarea existe
  for (var mapa in tareas) {
    if (mapa['titulo'] == tarea) {
      tareaBuscada = true;
      break;
    }
  }

  if (!tareaBuscada) {
    tareas.add({'titulo': tarea, 'descripcion': descripcion});
    print('Tarea agregada: $tarea - $descripcion');
  } else {
    print('La tarea ya existe');
  }
}

void eliminarTarea(List<Map<String, String>> tareas, String tareaAeliminar) {
  bool tareaEncontrada = false;
  int indiceAeliminar = -1;

  // buscar tarea x titulo
  for (int i = 0; i < tareas.length; i++) {
    if (tareas[i]['titulo'] == tareaAeliminar) {
      indiceAeliminar = i;
      tareaEncontrada = true;
      break;
    }
  }

  // Si se encuentra la tarea, eliminar por su índice
  if (tareaEncontrada) {
    tareas.removeAt(indiceAeliminar);
    print('Tarea eliminada: $tareaAeliminar');
  } else {
    print('La tarea no existe');
  }
}

void mostrarTareas(List<Map<String, String>> tareas) {
  if (tareas.isEmpty) {
    print('No hay tareas registradas');
  } else {
    print('Listado de tareas:');
    for (var tarea in tareas) {
      print('${tarea['titulo']} - ${tarea['descripcion']}');
    }
  }
}
