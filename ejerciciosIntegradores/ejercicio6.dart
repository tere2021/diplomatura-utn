void main() {
  /*Estructura de datos y funciones que trabajan con ellas:
Nuestra aplicación de noticias personalizada permite filtrar las noticias de ese día algunas
palabras clave, un pequeño algoritmo de recomendación. Las noticias llegan en una lista de
títulos ‘noticias’, y solo guardaremos en la lista “noticiasRecomendadas”, las que contengan
la palabra clave.
‘Ecología’, ‘Climático’, ‘climático’, ‘ecológicas’, ‘biodiversidad’, ‘ecológico’, ‘climáticos’,
‘clima’, ‘naturales’, ‘sostenibilidad’.
Lista de noticias y palabras clave
Necesitamos entonces, poder iterar en la lista, y buscar en cada titular si “contiene” alguna
de las palabras clave.
Una vez consigamos esto, vamos a encapsular este código en una función que reciba por
parámetros una lista de noticias, una lista de palabras clave y va a retornar una lista de
“recomendados”.
*/
//Palabras Clave
  List<String> palabrasClave = [
    'Ecología',
    'Climático',
    'climático',
    'ecológicas',
    'biodiversidad',
    'ecológico',
    'climáticos',
    'clima',
    'naturales',
    'sostenibilidad'
  ];

//Lista de titulares
  List<String> noticias = [
    'La situación política en Medio Oriente: un análisis reciente',
    'Elecciones en Francia: resultados y repercusiones',
    'Crisis económica en Argentina: causas y soluciones propuestas',
    'Conflicto entre Rusia y Ucrania: últimas noticias y análisis',
    'La extracción de minerales raros y su impacto ecológico',
    'Reformas políticas en Brasil: impacto y controversias',
    'Tensiones diplomáticas entre China y Estados Unidos',
    'Tecnología y sostenibilidad: innovaciones verdes en 2024',
    'Cumbre del G7: acuerdos y desacuerdos clave',
    'Política migratoria en Europa: desafíos y soluciones',
    'Ecología y sostenibilidad: desafíos y oportunidades en 2024',
    'La influencia de los lobbies en la política europea',
    'Ecuador lanza campaña para proteger la biodiversidad',
    'Informe: Derechos climáticos y mecanismos de defensa del clima en España',
    'Cambios en el liderazgo político en Japón',
    'Conflicto en Medio Oriente: análisis y perspectivas',
    'Nuevas políticas energéticas en Alemania',
    'Reformas económicas en India: impacto en la población',
    'El impacto del turismo en áreas naturales protegidas',
    'Crisis política en Venezuela: últimas noticias',
    'Relaciones diplomáticas entre Israel y Palestina',
    'El Tribunal Constitucional y el primer litigio climático en España',
    'Estrategias de seguridad nacional en Estados Unidos',
    'La reserva hídrica en España y los efectos del cambio climático',
    'Las especies invasoras y su impacto en la biodiversidad española',
    'Desafíos de la integración europea: un análisis reciente',
    'Crisis política en Líbano: causas y consecuencias',
    'Política exterior de Canadá: cambios y continuidades',
    'Observatorio de Salud y Cambio Climático: efectos en la salud de temperaturas extremas',
    'Estudio sobre los peligros naturales en la comarca de la Garrotxa',
    'Elecciones en México: análisis de los resultados',
    'El impacto del cambio climático en la biodiversidad marina',
    'Ecuador acogerá el IV Congreso Latinoamericano de Ecología Política',
    'Conflictos armados en África: causas y soluciones propuestas',
    'Crisis sanitaria global: respuestas y desafíos',
    'Un ciclo reflexiona sobre las utopías ecológicas en Madrid',
    'Nuevas alianzas políticas en el sudeste asiático',
    'Impacto del Brexit en la economía europea',
    'Reformas educativas en Chile: impacto y controversias',
    'Política ambiental en Canadá: avances y desafíos',
    'Conflictos territoriales en Asia: análisis y perspectivas',
    'Nuevas medidas económicas en Rusia: impacto y controversias',
    'Reformas en el sistema de salud en Brasil: impacto en la población',
    'Conflictos étnicos en África: causas y soluciones propuestas',
    'Los españoles creen que invertir en ecología aliviará la subida energética',
    'Política energética en Argentina: desafíos y oportunidades'
  ];

  //Función para obtener las noticias recomendadas
  Map<String, List<String>> recomendadas =
      noticiasRecomendadas(palabrasClave, noticias);

  // Imprimir las noticias encontradas  agrupadas por palabra clave
  for (var palabraClave in recomendadas.keys) {
    print('\n$palabraClave:');
    for (var noticia in recomendadas[palabraClave]!) {
      print('- $noticia');
    }
  }
}

// Crear una lista de todas las noticias recomendadas
Map<String, List<String>> noticiasRecomendadas(
    List<String> palabrasClave, List<String> noticias) {
  Map<String, List<String>> noticiasRecomendadas = {};

  for (var palabra in palabrasClave) {
    // Filtrar las noticias que contienen la palabra clave
    List<String> noticiasFiltradas = noticias
        .where(
            (noticia) => noticia.toLowerCase().contains(palabra.toLowerCase()))
        .toList();

    // Asignar las noticias filtradas a la palabra clave
    if (noticiasFiltradas.isNotEmpty) {
      noticiasRecomendadas[palabra] = noticiasFiltradas;
    }
  }

  return noticiasRecomendadas; // Retornar el mapa de palabras clave y noticias filtradas
}
