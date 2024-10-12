void main() {
  /*Trabajo con mapas. Logren lo mismo que antes pero esta vez vamos a trabajar con
mapas lo cual sería mucho más habitual que trabajar estas estructuras con listas.
Este es un mapa de noticias y Links: Mapa de noticias
*/
  Map<String, String> titulares = {
    "La situación política en Medio Oriente: un análisis reciente":
        "https://www.bbc.com/mundo/noticias-internacional-57865432",
    "Elecciones en Francia: resultados y repercusiones":
        "https://elpais.com/internacional/2024-06-26/elecciones-en-francia-resultados-y-repercusiones.html",
    "Crisis económica en Argentina: causas y soluciones propuestas":
        "https://www.lanacion.com.ar/economia/crisis-economica-argentina-causas-soluciones-propuestas-nid24062024/",
    "Conflicto entre Rusia y Ucrania: últimas noticias y análisis":
        "https://www.bbc.com/mundo/noticias-internacional-57865434",
    "La extracción de minerales raros y su impacto ecológico":
        "https://www.efeverde.com/noticias/extracción-minerales-raros-impacto-ecológico-2023/",
    "Reformas políticas en Brasil: impacto y controversias":
        "https://www.bbc.com/mundo/noticias-america-latina-57865435",
    "Tensiones diplomáticas entre China y Estados Unidos":
        "https://elpais.com/internacional/2024-06-26/tensiones-diplomáticas-china-estados-unidos.html",
    "Tecnología y sostenibilidad: innovaciones verdes en 2024":
        "https://www.ecoticias.com/sostenibilidad/244192/tecnología-sostenibilidad-innovaciones-verdes-2024",
    "Cumbre del G7: acuerdos y desacuerdos clave":
        "https://www.lanacion.com.ar/el-mundo/cumbre-g7-acuerdos-desacuerdos-clave-nid24062024/",
    "Política migratoria en Europa: desafíos y soluciones":
        "https://www.bbc.com/mundo/noticias-europa-57865436",
    "Ecología y sostenibilidad: desafíos y oportunidades en 2024":
        "https://www.ecoticias.com/sostenibilidad/244184/Ecología-sostenibilidad-desafíos-oportunidades-2024",
    "La influencia de los lobbies en la política europea":
        "https://www.efeverde.com/noticias/influencia-lobbies-politica-europea-2023/",
    "Ecuador lanza campaña para proteger la biodiversidad":
        "https://www.ecoticias.com/medio-ambiente/244186/Ecuador-campaña-proteger-biodiversidad",
    "Informe: Derechos climáticos y mecanismos de defensa del clima en España":
        "https://www.ecoticias.com/cambio-climatico/244187/derechos-climáticos-defensa-clima-España",
    "Cambios en el liderazgo político en Japón":
        "https://www.lanacion.com.ar/el-mundo/cambios-liderazgo-político-japón-nid24062024/",
    "Conflicto en Medio Oriente: análisis y perspectivas":
        "https://www.bbc.com/mundo/noticias-internacional-57865437",
    "Nuevas políticas energéticas en Alemania":
        "https://www.efeverde.com/noticias/nuevas-políticas-energéticas-alemania-2023/",
    "Reformas económicas en India: impacto en la población":
        "https://www.lanacion.com.ar/economia/reformas-económicas-india-impacto-población-nid24062024/",
    "El impacto del turismo en áreas naturales protegidas":
        "https://www.ecoticias.com/sostenibilidad/244191/impacto-turismo-areas-naturales-protegidas",
    "Crisis política en Venezuela: últimas noticias":
        "https://www.bbc.com/mundo/noticias-america-latina-57865438",
    "Relaciones diplomáticas entre Israel y Palestina":
        "https://elpais.com/internacional/2024-06-26/relaciones-diplomáticas-israel-palestina.html",
    "El Tribunal Constitucional y el primer litigio climático en España":
        "https://www.ecoticias.com/cambio-climatico/244188/litigio-climático-España",
    "Estrategias de seguridad nacional en Estados Unidos":
        "https://www.efeverde.com/noticias/estrategias-seguridad-nacional-estados-unidos-2023/",
    "La reserva hídrica en España y los efectos del cambio climático":
        "https://www.ecoavant.com/medio-ambiente/reserva-hídrica-efectos-cambio-climático-2023/",
    "Las especies invasoras y su impacto en la biodiversidad española":
        "https://www.ecoticias.com/medio-ambiente/244190/especies-invasoras-biodiversidad-española",
    "Desafíos de la integración europea: un análisis reciente":
        "https://elpais.com/internacional/2024-06-26/desafíos-integración-europea-análisis-reciente.html",
    "Crisis política en Líbano: causas y consecuencias":
        "https://www.bbc.com/mundo/noticias-internacional-57865439",
    "Política exterior de Canadá: cambios y continuidades":
        "https://www.lanacion.com.ar/el-mundo/política-exterior-canadá-cambios-continuidades-nid24062024/",
    "Observatorio de Salud y Cambio Climático: efectos en la salud de temperaturas extremas":
        "https://www.ecoticias.com/cambio-climatico/244189/efectos-salud-temperaturas-extremas",
    "Estudio sobre los peligros naturales en la comarca de la Garrotxa":
        "https://www.ecoavant.com/medio-ambiente/peligros-naturales-garrotxa-2023/",
    "Elecciones en México: análisis de los resultados":
        "https://www.bbc.com/mundo/noticias-america-latina-57865440",
    "El impacto del cambio climático en la biodiversidad marina":
        "https://www.ecoticias.com/cambio-climatico/244185/impacto-cambio-climatico-biodiversidad-marina",
    "Ecuador acogerá el IV Congreso Latinoamericano de Ecología Política":
        "https://www.efeverde.com/noticias/ecologia-politica-ecuador-2023/",
    "Conflictos armados en África: causas y soluciones propuestas":
        "https://elpais.com/internacional/2024-06-26/conflictos-armados-africa-causas-soluciones.html",
    "Crisis sanitaria global: respuestas y desafíos":
        "https://www.efeverde.com/noticias/crisis-sanitaria-global-respuestas-desafíos-2023/",
    "Un ciclo reflexiona sobre las utopías ecológicas en Madrid":
        "https://www.efeverde.com/noticias/utopías-ecológicas-Madrid-2023/",
    "Nuevas alianzas políticas en el sudeste asiático":
        "https://www.lanacion.com.ar/el-mundo/nuevas-alianzas-políticas-sudeste-asiático-nid24062024/",
    "Impacto del Brexit en la economía europea":
        "https://elpais.com/economia/2024-06-26/impacto-brexit-economía-europea.html",
    "Reformas educativas en Chile: impacto y controversias":
        "https://www.bbc.com/mundo/noticias-america-latina-57865441",
    "Política ambiental en Canadá: avances y desafíos":
        "https://www.efeverde.com/noticias/política-ambiental-canadá-avances-desafíos-2023/",
    "Conflictos territoriales en Asia: análisis y perspectivas":
        "https://elpais.com/internacional/2024-06-26/conflictos-territoriales-asia-análisis.html",
    "Nuevas medidas económicas en Rusia: impacto y controversias":
        "https://www.bbc.com/mundo/noticias-internacional-57865442",
    "Reformas en el sistema de salud en Brasil: impacto en la población":
        "https://www.lanacion.com.ar/el-mundo/reformas-sistema-salud-brasil-impacto-población-nid24062024/",
    "Conflictos étnicos en África: causas y soluciones propuestas":
        "https://elpais.com/internacional/2024-06-26/conflictos-étnicos-africa-causas-soluciones.html",
    "Los españoles creen que invertir en ecología aliviará la subida energética":
        "https://www.efeverde.com/noticias/invertir-ecología-subida-energética-2023/",
    "Política energética en Argentina: desafíos y oportunidades":
        "https://www.efeverde.com/noticias/política-energética-argentina-desafíos-oportunidades-2023/"
  };

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

  // Mapa para almacenar noticias discriminadas por palabra clave
  Map<String, List<String>> noticiasPorPalabraClave = {};

// Inicializar el mapa con listas vacías para cada palabra clave
  for (String palabra in palabrasClave) {
    noticiasPorPalabraClave[palabra] = [];
  }

  // Buscar coincidencias en los titulares
  titulares.forEach((titular, link) {
    for (String palabra in palabrasClave) {
      if (titular.contains(palabra)) {
        noticiasPorPalabraClave[palabra]!.add("$titular\n$link");
        break;
      }
    }
  });
  // Imprimir los resultados discriminados por palabra clave
  noticiasPorPalabraClave.forEach((palabraClave, noticias) {
    if (noticias.isNotEmpty) {
      print("Noticias relacionadas con '$palabraClave':");
      for (String noticia in noticias) {
        print(noticia);
      }
      print("\n");
    }
  });
}
