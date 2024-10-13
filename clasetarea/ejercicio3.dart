void main() {
  // METADATOS
  /* a. Declara en alguno de tus ejercicios anteriores un metadato referente a un valor
  deprecado, avisando que ya no usen esas variables.
  */
  @deprecated
  String colorDeprecado = "rojo";

  String color = "verde";
  String resultado = color == "rojo" ? "STOP" : "GO";
  print(resultado);

  /* b. Crea tu propio tipo de Metadato que sirva para listar tareas por hacer en conjunto con
  tus compañeros.
  */
  mostrarTareas();
}

// Definiendo un metadato
class TareaMeta {
  final String descripcion;

  const TareaMeta(this.descripcion);
}

// Clase que representa una tarea
class Tarea {
  String descripcion;

  Tarea(this.descripcion);
}

// Usando el metadato en una función
@TareaMeta('Tarea por hacer')
void mostrarTareas() {
  print('Tareas por hacer:');
  List<Tarea> listaTareas = [
    Tarea('•Completar el informe'),
    Tarea('•Revisar el código'),
    Tarea('•Preparar la presentación'),
  ];

  for (var tarea in listaTareas) {
    print(tarea.descripcion);
  }
}
