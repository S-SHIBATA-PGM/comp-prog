import 'dart:io';
import 'dart:math';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  const int zero = 0;
  const int one = 1;
  const int three = 3;
  const int oneMinus = -1;
  int cubes = zero;
  for (int i = one; i <= N; i++) {
    cubes += (pow(oneMinus, i) * pow(i, three)).round();
  }
  print(cubes);
  exit(0);
}
