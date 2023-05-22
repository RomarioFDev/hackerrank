/**
 * Problema [Simple Array Sum]
 *  Dada una matriz de enteros, encuentre la suma de sus elementos.
 * Por ejemplo, si la matrizm = [1,2,3], 1 + 2 + 3 = 6, por lo que devuelve 6.
 * 
 * Descripción de la función
 * Complete la función simpleArraySum en el editor siguiente. Debe devolver la
 * suma de los elementos de matriz como un número entero.
 * simpleArraySum tiene los siguientes parámetros:
 * ar: una matriz de enteros
 * 
 * Formato de entrada
 * La primera línea contiene un número entero, , que indica el tamaño de la matriz.
 * La segunda línea contiene enteros separados por espacios que representan los
 * elementos de la matriz. 
 * 
 * Restricciones
 * 0 < n, ar[i] <= 1000
*/

import 'dart:io';

void main(List<String> args) {
  // Arreglo basio
  List<int> ar = [];

  // Pedir la cantidad de numeros a sumar en el arreglo
  stdout.writeln('Ingrese la cantidad de numeros a sumar: ');
  int n = int.parse(stdin.readLineSync()!);

  // Introducir los numeros en el arreglo
  for (int i = 0; i < n; i++) {
    stdout.writeln('Ingrese el numero ${i + 1}: ');
    int valor = int.parse(stdin.readLineSync()!);
    ar.add(valor);
  }

  // Funcion para sumar los numeros del arreglo
  void simpleArraySum() {
    int sum = 0;
    for (int i = 0; i < ar.length; i++) {
      sum = sum + ar[i];
    }
    stdout.writeln('La suma de los numeros del arreglo es: $sum');
  }

  simpleArraySum();
}
