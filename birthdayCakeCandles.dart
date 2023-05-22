/* 
Terminado
Ejercicio [Birthday Cake Candles]

Usted está a cargo del pastel para el cumpleaños de un niño. Has decidido que
el pastel tendrá una vela por cada año de su edad total. Solo podrán apagar la
más alta de las velas. Cuenta cuántas velas son más altas.

Ejemplo
Las velas más altas tienen  unidades de medida, mientras que las más bajas
tienen  y . Por lo tanto, hay  velas altas.

Descripción de la función
Complete la función birthdayCakeCandles en el editor a continuación.
birthdayCakeCandles tiene los siguientes parámetros:
int velas [n]: la altura de cada vela

Devuelve
int: el número de velas que son más altas que las demás

Entrada de muestra
4
3 2 1 3

Salida de muestra
2

*/

import 'dart:io';

int birthdayCakeCandles(int n) {
  List<int> candles = []; // Crear el arreglo

  // Añadir valores al arreglo dependiendo de n
  for (int i = 0; i < n; i++) {
    stdout.write('Vela $i: ');
    int ci = int.parse(stdin.readLineSync()!);
    candles.add(ci);
  }

  candles.sort(); // Ordenar valores de menor a mayor

  int candlesLast = candles.last; // Darle el valor del ultimo elemento

  int cont = 0; // Contador para las velas mas altas

  /// Condicion donde si el ultimo valor es igual al valor de la posicion del
  /// la lista, count incrementara, en dado caso de no ser iguales, no incrementa
  for (int i = 0; i < n; i++) {
    if (candlesLast == candles[i]) cont++;
  }

  return cont;
}

void main(List<String> args) {
  stdout.writeln('¿Cuanntas velas seran ?');
  int n = int.parse(stdin.readLineSync()!);

  int result = birthdayCakeCandles(n);
  stdout.writeln('No. velas altas: $result');
}
