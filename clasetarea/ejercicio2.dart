void main() {
  //EXPRESIONES CONDICIONALES
/*a. Prueba la expresión condicional ? : de operación ternaria, define una variable que
evalue un valor de texto, si el valor es rojo, guarda la palabra ‘STOP’, si el valor es verde,
guarda la palabra ‘GO’, y luego imprime en consola el resultado.
*/
  String color = "verde";
  String resultado = color == "rojo" ? "STOP" : "GO";
  print(resultado);

  /*b. Prueba la expresión condicional ??, define una variable que evalue un valor de texto o
nulo, si el valor es tu nombre, debe guardar tu nombre, si el valor es null, guarda la palabra
‘invitado’, y luego imprime en consola el resultado.
*/

  String? miNombre;

  // Usando el operador de coalescencia nula
  String salida = miNombre ?? "invitado";
  print(salida);
}
