/*
Ejercicio: [SubArray Division]

Dos niños, Lily y Ron, quieren compartir una barra de chocolate. Cada uno de
los cuadrados tiene un número entero.

Lily decide compartir un segmento contiguo de la barra seleccionado de tal manera que:

La duración del segmento coincide con el mes de nacimiento de Ron, y,
La suma de los enteros en los cuadrados es igual a su día de nacimiento.
Determine de cuántas maneras puede dividir el chocolate.

Ejemplo
s = [2,2,1,3,2]
d = 4
m = 2

salida: 2 // Resultado

Lily quiere encontrar segmentos que cumplan con los criterios de Ron para el
cumpleaños de Ron con m = 2, d = 4 y hay dos segmentos: [2,2] y [1,3].

Descripción de la función
Complete la función birthday en el editor a continuación.

birthday tiene los siguientes parámetros:
int s [n]: los números en cada uno de los cuadrados de chocolate
int d: el número que debe sumar el segmento seleccionado
int m: la longitud del segmento seleccionado

Devuelve
int: el número de formas que puede dividir una barra de chocolate

Entrada de formato:
La primera línea contiene un entero n, el número de cuadrados en la barra de
chocolate.
La segunda línea contiene n enteros separados por espacios, s [i], los números
en los cuadrados de chocolate donde 0 <= i < n.
La tercera línea contiene dos enteros separados por espacios, d y m, el día y
el mes de nacimiento de Ron.


*/

import 'dart:io';

int birthday(int n) {
  List<int> s = [];

  for (int i = 0; i < n; i++) {
    stdout.write('s[$i]: ');
    int sData = int.parse(stdin.readLineSync()!);
    s.add(sData);
  }
  stdout.write('Mes: ');
  int m = int.parse(stdin.readLineSync()!); // Mes de nacimiento

  stdout.write('Dia: ');
  int d = int.parse(stdin.readLineSync()!); // Dia de nacimiento

  int result = 0;

  for (int i = 0; i < m; i++) {
    int space = s.length > 2 ? s[i + 1] : 0;
    int sum = s[i] + space;
    if (sum == d) result++;
  }
  return result;
}

void main(List<String> args) {
  stdout.write('Numero de arreglo: ');

  int n = int.parse(stdin.readLineSync()!);
  int output = birthday(n);
  print('Output: $output');
}
