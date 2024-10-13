//funciones
void main() {
/* a. Declara tu primera función, define su valor de retorno, sus parametros y haz que
imprima en consola los valores que le pases en sus parametros, luego ejecuta tu función y
comprueba que se imprima correctamente en la consola. Prueba escribir tu función de
manera simplificada con sintaxis de flecha.*/
  print(sumar(3, 2));
  print(sumarRequerido(3, b: 2));
}

int sumar(int a, int b) => a + b;

/*b. Prueba duplicar tu función y definirle a dart que uno de tus parametros es requerido,
luego ejecutala pero sin incluirle ese parametro, revisa que es lo que sucede.*/

int sumarRequerido(int a, {required int b}) => a + b;
