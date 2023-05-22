/* 
  Problema [A Very Big Sum]

  En este desafío, debe calcular e imprimir la suma de los elementos en una matriz, teniendo en cuenta que algunos de esos enteros pueden ser bastante grandes.

  Descripción de la función

  Complete la función aVeryBigSum en el editor a continuación. Debe devolver la suma de todos los elementos de la matriz.

  aVeryBigSum tiene los siguientes parámetros:

  int ar[n]: una matriz de enteros .
  Devolución

  long: la suma de todos los elementos de la matriz
*/

import 'dart:io';

void aVeryBigSum() {
  List<int> ar = [
    1000000001,
    1000000002,
    1000000003,
    1000000004,
    1000000005,
  ];
  int sum = 0;
  for (var i = 0; i < ar.length; i++) {
    sum = sum + ar[i];
  }
  stdout.writeln(sum);
}

void main(List<String> args) {
  aVeryBigSum();
}
