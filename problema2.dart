// Resuelto
import 'dart:io';

piramide(int filas) {
  for (int i = 1; i <= filas; i++) {
    stdout.write(' ' * (filas - i));
    for (int j = 1; j <= i; j++) {
      stdout.write('#');
    }
    stdout.writeln(' ');
  }
}

void main(List<String> args) {
  stdout.writeln('Cuantos escalones ?');
  int filas = int.parse(stdin.readLineSync()!);
  piramide(filas);
}
