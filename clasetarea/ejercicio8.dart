//CONTROL DE FLUJO

void main() {
/*a. Crea una función que reciba un valor bool cómo parametro y evalualo con un
condicional IF ELSE:
- Siendo TRUE - Debe Imprimir en la consola, “Es Verdadero”.
- Siendo FALSE - Debe Imprimir en la consola, “Es Falso”.
* Agrega una condición más en con un IF ELSE IF que evalue si el parametro es
nulo, y imprime en la consola, “No hay valor”.
*/
  bool? valor = true;
  funcionIfElse(valor);

  /*b. Crea una función que reciba un número entero cómo parametro, y usalo dentro de tu
función creando un Bucle FOR, que tome ese valor cómo cantidad maxima de iteraciones.
Luego imprime en cada iteración el número en consola de la misma.*/
  funcionFor(5);

  /*Define una Lista de Frutas y Vegetales, luego crea una función que reciba cómo
parametro esa lista y la recorra internamente utilizando un bucle FOR IN.
Imprime en pantalla el nombre de cada fruta o vegetal.*/
  List<String> lista = ['Manzana', 'Pera', 'Zanahoria', 'Uva', 'Rúcula'];
  funcionForIn(lista);

  /*d. Prueba hacer un bucle WHILE que imprima en pantalla un numero 10 veces, puede ser
cualquier número, luego de llegar a la decima impresión debe finalizar su ejecución y e
imprimir “Fin del Loop” en la consola.*/
  funcionWhile(10);

  /*e. Prube hacer lo mismo pero con un bucle DO WHILE.*/
  funcionDoWhile(10);

  /*f. Crea una función que tome como parametro una de las letras del abecedario español.
- Crea un control de Flujo dentro que pueda Imprimir en pantalla, “La letra es $letra”.
- Debes usar una estructura de control SWITCH.
- Define un valor default para un valor Nulo, imprime en pantalla “No se encontró”.*/
  String? letra = 'c';
  funcionSwitch(letra);
}

//a
void funcionIfElse(bool? condicion) {
  if (condicion == true) {
    print("Es Verdadero");
  } else if (condicion == false) {
    print("Es Falso");
  } else {
    print("No hay valor");
  }
}

//b
void funcionFor(int numero) {
  for (int i = 0; i < numero; i++) {
    print(i + 1); // Para imprimir del 1 al 'numero'
  }
}

//c
funcionForIn(List<String> lista) {
  for (var item in lista) {
    print(item);
  }
}

//d
void funcionWhile(int numero) {
  int contador = 1;
  while (contador < 11) {
    print(contador);
    contador++;
  }
  print('Fin del Loop');
}

//e
void funcionDoWhile(int cantidad) {
  int contador = 1;
  do {
    print(contador);
    contador++;
  } while (contador <= cantidad);
  print('Fin del Loop do While');
}

//f
void funcionSwitch(String? letra) {
  switch (letra) {
    case 'a':
    case 'b':
    case 'c':
    case 'd': //y asi sucesivamente todo el abcdario
      print('La letra es $letra');
      break;
    default:
      print('No se encontró.');
  }
}
