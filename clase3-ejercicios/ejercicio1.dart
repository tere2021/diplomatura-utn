void main() {
/*Crea un programa que valide un usuario y contraseña
utilizando un mapa (Map<String, String>). 
Si el usuario y la contraseña son correctos, 
el programa debe imprimir "Acceso concedido". 
De lo contrario, imprimir "Acceso denegado".

Datos para trabajar:*/
  Map<String, String> usuarios = {
    'usuario1': 'password123',
    'usuario2': 'abc123',
  };
  validarUsuario(usuarios, 'usuario1', 'password123');
  validarUsuario(usuarios, 'xxx', 'password123');
}

validarUsuario(Map<String, String> usuarios, String usuario, String clave) {
  if (usuarios.isEmpty) {
    print('No hay usuarios registrados');
  } else {
    if (usuarios.containsKey(usuario) && usuarios[usuario] == clave) {
      print('Acceso concedido');
    } else {
      print('Acceso denegado');
    }
  }
}
