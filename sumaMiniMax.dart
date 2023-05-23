import 'dart:io';

String miniMaxSum(int n) {
  List<int> arr = [];

  for (int i = 0; i < n; i++) {
    int valor = int.parse(stdin.readLineSync()!);
    arr.add(valor);
  }

  int sumMin = 0;
  int sumMax = 0;
  for (int i = 0; i < arr.length - 1; i++) {
    sumMax = sumMax + arr[i + 1];
    sumMin = sumMin + arr[i];
  }
  return '$sumMin $sumMax';
}

void main(List<String> args) {
  int n = int.parse(stdin.readLineSync()!);

  String result = miniMaxSum(n);
  stdout.writeln(result);
}
