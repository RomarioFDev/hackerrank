// Resuelto
import 'dart:io';

int solveMeFirst(int a, int b) {
  int sum = a + b;
  return sum;
}

void main(List<String> args) {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);

  int sum = solveMeFirst(a, b);
  stdout.writeln(sum);
}
