void main() {
  /*2.- La aplicación de ejercicio nunca puede reemplazar a un profesional, por lo cual necesitamos
  que por un lado se muestre un mensaje de advertencia, personalizado con el nombre del paciente
  ¿En qué tipo de variable se guardaría?. Y vamos a tener una sección de salud donde el usuario vaya
  clickando qué controles se ha hecho y cuáles no con qué estructura de datos guardaría esa checklist?
  ¿Y de qué elementos estaría conformada?
  */

  String nombrePaciente = "Pablo Perez";
  print(
      "Una app de ejercicio no reemplaza un control profesional.\n ${nombrePaciente.toUpperCase()} necesitas un chequeo periodico");

  // Sección salud - Mapa con controles médicos
  Map<String, String?> controlesPaciente = {
    'odontologico': '',
    'cardiologico': '',
    'clinico': 'si'
  };

  // Registrar controles médicos
  for (var control in controlesPaciente.keys) {
    if (controlesPaciente[control] == '') {
      print(
          'No has realizado el control de $control\nDeseas hacerlo? 1-Si 2-No');

      // suponiendo que desee hacer el estudio
      int opcion = 1;
      if (opcion == 1) {
        controlesPaciente[control] = 'si';
        print('$control registrado como realizado.\n');
      } else {
        print('No se ha registrado el control de $control.\n');
      }
    }
  }

  // Mostrar la ficha de salud del paciente
  print('Ficha de salud del paciente ${nombrePaciente.toUpperCase()}');
  for (var control in controlesPaciente.keys) {
    // Mostrar si el control fue realizado o no
    print('Estudio: $control, Se hizo?: ${controlesPaciente[control] ?? 'no'}');
  }
}
