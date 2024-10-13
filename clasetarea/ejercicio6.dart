//La Función main()

void main() {
/*a. Prueba hacer una impresión de la palabra this dentro de la función Main.*/
  //print(this); // Esto genera  un error de compilación

  /*b. Crea una colección de frutas, y ejecuta una función de mapa por cada una imprimiendo
en pantalla los nombres en mayusculas.*/

  Map<int, String> frutas = {
    1: 'Manzana',
    2: 'Banana',
    3: 'Naranja',
    4: 'Fresa',
  };
  frutas.forEach((key, value) {
    print('Frutas:\n $key - ${value.toUpperCase()}');
  });
}
