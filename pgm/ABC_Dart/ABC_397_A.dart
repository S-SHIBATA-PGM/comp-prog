// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final double X = double.parse(stdin.readLineSync()!);
  final double dHigh = 38.0;
  final double dFever = 37.5;
  final int high = 1;
  final int fever = 2;
  final int normal = 3;
  if (dHigh <= X) {
    print(high);
  } else if (dFever <= X) {
    print(fever);
  } else {
    print(normal);
  }
  exit(0);
}
