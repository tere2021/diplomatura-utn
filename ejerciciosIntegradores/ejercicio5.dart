void main() {
  /*- Recorrer y acceder a mapas
  Estoy haciendo una aplicación de un restaurante. En el cual hay una lista de ingredientes
  que es “plato1”. Por otra parte, tengo un mapa del tipo Map<String, int> que guarda el
  ingrediente y las unidades que hay de ese ingrediente. Necesitamos una función que reciba
  un plato y modifique la cantidad de ingredientes que quedan de cada uno. Si no hay
  suficientes ingredientes de algun tipo, la función debe devolver “No hay suficientes
  ingredientes de “ingrediente” y si logra descontar todos de manera exitosa debe devolver
  un mensaje que diga “Inventario actualizado”.
  Recurso: Ingredientes e Inventario para probar la función.
  Nota: Cuando acceder a un valor de un diccionario lo hacemos según la clave
  correspondiente, puede pasar que si queremos acceder a ese diccionario dentro de un
  bucle tengamos que asegurarle al mismo que el dato que le estamos pidiendo nunca va a
  ser nulo. Si estamos seguros de esto podemos agregar un ! al final del comando. (A
  diferencia de si fuera al principio lo cual seria la negación para un booleano)
  Ejem: if (inventario[‘stringIngrediente’]! > 0) {}
  Una función de los mapa que podría ser de utilidad (o no según cómo armen el programa)
  es revisar si tal clave (una “key”) está en el mapa.
  Ejem: if (inventario.containsKey(‘stringIngrediente’)) {}
  */

  // Listas de ingredientes para platos
  List<String> pizzaMargherita = ["tomate", "queso mozzarella", "albahaca"];

  List<String> ensaladaCesar = [
    "lechuga",
    "pollo",
    "queso parmesano",
    "croutones",
    "aderezo césar"
  ];

  List<String> tacosDeCarne = [
    "tortilla",
    "carne",
    "cebolla",
    "cilantro",
    "salsa"
  ];

  // Mapa de inventario de ingredientes
  Map<String, int> inventario = {
    "tomate": 20,
    "queso mozzarella": 10,
    "albahaca": 5,
    "lechuga": 15,
    "pollo": 8,
    "queso parmesano": 7,
    "croutones": 12,
    "aderezo césar": 6,
    "tortilla": 25,
    "carne": 10,
    "cebolla": 10,
    "cilantro": 8,
    "salsa": 10
  };

  // Mapa de la cantidad de ingredientes para cada plato
  Map<String, Map<String, int>> ingredientesPorPlato = {
    'ensaladaCesar': {
      "lechuga": 1,
      "pollo": 1,
      "queso parmesano": 1,
      "croutones": 1,
      "aderezo césar": 1
    },
    'pizzaMargherita': {"tomate": 1, "queso mozzarella": 1, "albahaca": 1},
    'tacosDeCarne': {
      "tortilla": 2,
      "carne": 1,
      "cebolla": 1,
      "cilantro": 1,
      "salsa": 1
    },
  };

  // Función que actualiza el inventario después de preparar el plato
  void actualizarInventario(String plato) {
    var ingredientesDelPlato = ingredientesPorPlato[plato];

    if (ingredientesDelPlato == null) {
      print("Plato no encontrado.");
      return;
    }

    for (var ingrediente in ingredientesDelPlato!.keys) {
      int cantidadNecesaria = ingredientesDelPlato[ingrediente]!;
      if (inventario.containsKey(ingrediente) &&
          inventario[ingrediente]! >= cantidadNecesaria) {
        inventario[ingrediente] = inventario[ingrediente]! - cantidadNecesaria;
      } else {
        print(
            "No hay suficientes ingredientes de $ingrediente para preparar el plato $plato");
        return; // Si falta algún ingrediente, sale de la función
      }
    }

    print('Inventario actualizado para el plato $plato.');
  }

  actualizarInventario('ensaladaCesar');
  actualizarInventario('ensaladaCesar');
  actualizarInventario('ensaladaCesar');
  actualizarInventario('ensaladaCesar');
  actualizarInventario('ensaladaCesar');
  actualizarInventario('ensaladaCesar');
  actualizarInventario('ensaladaCesar');
  actualizarInventario('ensaladaCesar');
  actualizarInventario('ensaladaCesar');
  actualizarInventario('ensaladaCesar');
  actualizarInventario('ensaladaCesar');
  actualizarInventario('ensaladaCesar');

  print(inventario);
}
