void main() {
  /*Habilidad de abstracción: Convertir información en estructuras condicionales.
Por la misma línea estamos creando una aplicación que puede sevir tanto para una
campaña de concientización sobre la salud, o para una obra social. En la misma
introduciríamos datos cómo sexo biológico, edad, y algunos antecedentes familiares para
ajustar nuestras recomendaciones los mejor posible: Información.
Crear las estructuras condicionales necesarias para poder procesar los datos del usuario y
recomendar correctamente a cada usuario según sus características que es lo
recomendado. Además una vez creado esto se debe encapsular el código en una función
que reciba los parámetros necesarios para ejecutarse.


Frecuencia de Estudios Clínicos para detección de cancer de mama.

Mujeres de Riesgo Promedio
1.	Mujeres de 40 a 49 años:
○	La American Cancer Society (ACS) sugiere que las mujeres tienen la opción de comenzar las mamografías anualmente entre los 40 y 44 años.
○	De 45 a 54 años, se recomienda una mamografía anual.
○	A partir de los 55 años, las mujeres pueden optar por continuar con mamografías anuales o cambiarlas a cada dos años (Cancer Info & Resources) (Yale Medicine).
2.	US Preventive Services Task Force (USPSTF):
○	Recomienda comenzar las mamografías a los 40 años y continuar cada dos años hasta los 74 años (Breast Cancer Research Foundation) (US Preventive Services Taskforce).
Mujeres de Alto Riesgo
●	Antecedentes familiares de cáncer de mama: Las mujeres con antecedentes familiares de cáncer de mama, especialmente si un pariente de primer grado (madre o hermana) fue diagnosticado a una edad temprana, deben considerar comenzar las mamografías 10 años antes de la edad en que se diagnosticó a su pariente (Yale Medicine).
●	Mutaciones genéticas (como BRCA1 o BRCA2): Estas mujeres generalmente requieren comenzar las mamografías y otros exámenes de detección antes de los 40 años y con más frecuencia. Esto debe ser discutido con un médico para establecer un plan personalizado (Cancer Info & Resources).
Hombres
●	Aunque es raro, los hombres con mutaciones genéticas BRCA o con antecedentes familiares fuertes de cáncer de mama deben discutir con su médico la posibilidad de realizarse mamografías u otros exámenes de detección a partir de los 35-40 años.
●	Algunos estudios Indican que el 2% de las población con cancel de mama son varones, los mismos presentan un mayor riesgo de mortalidad debida a una probabilidad más alta de metastasis no extirpable.
●	(Cancer Info & Resources).


*/

  recomendarControles('mujer', 45, true);
  recomendarControles('hombre', 38, false);
  recomendarControles('mujer', 55, false);
  recomendarControles('mujer', 14, false);
  recomendarControles('indefinido', 14, false);
}

// Función que recomienda controles según el sexo, edad y antecedentes familiares
void recomendarControles(String sexo, int edad, bool antecedentesFamiliares) {
  if (sexo.toLowerCase() == 'mujer') {
    if (antecedentesFamiliares) {
      // Recomendaciones mujeres de alto riesgo
      print(
          'Recomendación: Comenzar mamografías 10 años antes de la edad de diagnóstico de su pariente.');
    } else {
      // Recomendaciones  mujeres de riesgo promedio
      if (edad >= 40 && edad <= 44) {
        print(
            'Recomendación: Tienes la opción de comenzar mamografías anualmente entre los 40 y 44 años.');
      } else if (edad >= 45 && edad <= 54) {
        print('Recomendación: Se recomienda mamografía anual.');
      } else if (edad >= 55) {
        print(
            'Recomendación: Puedes optar por mamografías anuales o cada dos años.');
      } else {
        print(
            'Recomendación: Consulta con tu médico sobre cuándo comenzar las mamografías.');
      }
    }
  } else if (sexo.toLowerCase() == 'hombre') {
    // Recomendaciones para hombres
    if (antecedentesFamiliares) {
      print(
          'Recomendación: Discutir con su médico la posibilidad de mamografías a partir de los 35-40 años.');
    } else {
      print(
          'Recomendación: Mantenerse informado y consultar con un médico si hay preocupaciones.');
    }
  } else {
    print('Sexo no válido. Por favor ingrese "mujer" o "hombre".');
  }
}
