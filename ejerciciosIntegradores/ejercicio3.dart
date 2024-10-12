void main() {
  /*Tengo una aplicación que ayuda a saber cuando cobramos cierto pago según el último
digito de nuestro DNI, o sea corresponden unos 3 días por terminación en el mes, del 0 a 9.
primero, ¿en qué tipo de dato conviene guardar mi DNI? Pista: Usen “endsWith()” y un
Switch con Strings.
//Ejemplo
void main() {
switch('unString')
{
case 'unString':
print('Hacemos algo');
break;
case 'otroString':
print('Hacemos algo');
break;
default:
print('Default');
break;
}
}

*/
  String dniComoTexto = '28725819';

  // Usar endsWith() para obtener el último dígito del DNI
  String ultimoDigito = dniComoTexto.endsWith('0')
      ? '0'
      : dniComoTexto.endsWith('1')
          ? '1'
          : dniComoTexto.endsWith('2')
              ? '2'
              : dniComoTexto.endsWith('3')
                  ? '3'
                  : dniComoTexto.endsWith('4')
                      ? '4'
                      : dniComoTexto.endsWith('5')
                          ? '5'
                          : dniComoTexto.endsWith('6')
                              ? '6'
                              : dniComoTexto.endsWith('7')
                                  ? '7'
                                  : dniComoTexto.endsWith('8')
                                      ? '8'
                                      : dniComoTexto.endsWith('9')
                                          ? '9'
                                          : ''; // Valor por defecto si no coincide

  // Usar switch con el último dígito
  switch (ultimoDigito) {
    case "0":
      print('Cobras entre el 1-3 del mes');
      break;
    case "1":
      print('Cobras entre el 3-6 del mes');
      break;
    case "2":
      print('Cobras entre el 6-9 del mes');
      break;
    case "3":
      print('Cobras entre el 9-12 del mes');
      break;
    case "4":
      print('Cobras entre el 12-15 del mes');
      break;
    case "5":
      print('Cobras entre el 15-18 del mes');
      break;
    case "6":
      print('Cobras entre el 18-21 del mes');
      break;
    case "7":
      print('Cobras entre el 21-24 del mes');
      break;
    case "8":
      print('Cobras entre el 24-27 del mes');
      break;
    case "9":
      print('Cobras entre el 27-30 del mes');
      break;
    default:
      print('Opcion no valida');
      break;
  }
}
