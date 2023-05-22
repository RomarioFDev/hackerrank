/*
Ploblemas [Compare the Triplets]

Alice y Bob crearon cada uno un problema para HackerRank. Un revisor califica los dos desafíos, otorgando puntos en una escala del 1 al 100 para tres categorías: claridad del problema, originalidad y dificultad.

La calificación para el desafío de Alice es el triplete a = (a[0], a[1], a[2]), y la calificación para el desafío de Bob es el triplete b = (b[0], b[1], b[2]).

La tarea es encontrar sus puntos de comparación comparando a[0] con b[0], a[1] con b[1] y a[2] con b[2].

Si a[i] > b[i], entonces Alicia recibe 1 punto.
Si a[i] < b[i], entonces Bob recibe 1 punto.
Si a[i] = b[i], entonces ninguna persona recibe un punto.
*/

import 'dart:io';

void compareTriplets(int n) {
  /// Declaracion de los arreglos
  List<int> a = [];
  List<int> b = [];

  /// Introducir datos en los arreglos
  for (int i = 0; i < n; i++) {
    stdout.write('Valor de A${i + 1}: ');
    int valorA = int.parse(stdin.readLineSync()!);
    a.add(valorA);
  }

  for (int i = 0; i < n; i++) {
    stdout.write('Valor de B${i + 1}: ');
    int valorB = int.parse(stdin.readLineSync()!);
    b.add(valorB);
  }

  int alicia = 0;
  int bot = 0;

  for (int i = 0; i < n; i++) {
    /// Con if and else
    /* if (a[i] > b[i]) {S
      alicia = alicia + 1;
    } else if (a[i] < b[i]) {
      bot = bot + 1;
    } */

    /// Con ternarios
    alicia = a[i] > b[i] ? (alicia = alicia + 1) : (alicia = alicia + 0);
    bot = a[i] < b[i] ? (bot = bot + 1) : (bot = bot + 0);
  }
  stdout.writeln('Alicia: $alicia Bot: $bot');
}

void main(List<String> args) {
  stdout.writeln('Tamanos de los arreglos');

  int n = int.parse(stdin.readLineSync()!);
  compareTriplets(n);
}
