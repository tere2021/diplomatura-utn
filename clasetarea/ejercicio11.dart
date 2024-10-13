//Constructors
// Lista vacía para almacenar las frutas creadas
List<Fruta> frutasCreadas = [];

// Lista con nombres de frutas
List<String> listaDeFrutas = [
  'Manzana',
  'Banana',
  'Naranja',
  'Mango',
  'Pera',
  'Piña',
  'Fresa',
  'Uva',
  'Ciruela',
  'Kiwi'
];

void main() {
  /*a. Declara una nueva instancia de una clase en tu código, prueba usando el modo simple
o usando la palabra reservada new.*/
  // Declarar una nueva instancia usando el modo simple
  var alumno1 = Alumno('Juan', 25);
  alumno1.mostrarInformacion();

  // Declarar una nueva instancia usando la palabra reservada 'new'
  Alumno alumno2 = new Alumno('Maria', 30);
  alumno2.mostrarInformacion();

  /*b. Crea una Clase Fruta, declara también 2 listas, una vacia llamada frutasCreadas y otra
llamada listaDeFrutas que contenga una lista de 10 frutas. Luego crea una función
llamada crearFrutas que reciba cómo parametro listaDeFrutas.
- Usa la lista dentro de la función iterando sobre ella con un bucle a elección.
- Por cada fruta iterada crea una Clase Fruta y guardala dentro de la lista
frutasCreadas,
- Luego de que se complete todo, Imprime en pantalla la lista de frutasCreadas y
la cantidad de frutas que contiene.
*/

// Se llama a la función crearFrutas y se pasa listaDeFrutas
  crearFrutas(listaDeFrutas);

  // Muestra cuántas frutas fueron creadas
  print('Cantidad de frutas creadas: ${frutasCreadas.length}');
}

//a
class Alumno {
  //propiedades
  String _nombre;
  int _edad;

  //constructor
  Alumno(this._nombre, this._edad);

  //getter para obtener el nombre
  String get nombre => _nombre;
  // Getter para obtener la edad
  int get edad => _edad;

//setter para establecer el nombre
  set nombre(String nuevoNombre) {
    _nombre = nuevoNombre;
  }

  // Setter para establecer la edad
  set edad(int nuevaEdad) {
    if (nuevaEdad >= 0) {
      _edad = nuevaEdad;
    } else {
      print("La edad no puede ser negativa.");
    }
  }

  // Método que imprime la información del alumno
  void mostrarInformacion() {
    print("Nombre: $_nombre, Edad: $_edad");
  }
}

//b

// Función que crea frutas a partir de listaDeFrutas
void crearFrutas(List<String> listaDeFrutas) {
  // Itera sobre la listaDeFrutas
  for (String nombre in listaDeFrutas) {
    // Crea una instancia de Fruta y la agrega a frutasCreadas
    frutasCreadas.add(Fruta(nombre));
  }

  // Muestra la lista de frutas creadas
  for (var fruta in frutasCreadas) {
    print(fruta.nombreFruta);
  }
}

// Clase Fruta
class Fruta {
  String nombreFruta;

  Fruta(this.nombreFruta);
}
