// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final [_, C] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  final T = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  const int one = 1;
  const int zero = 0;
  int pre = -C;
  int Candy = zero;
  for (int time in T) {
    if (time - pre >= C) {
      Candy += one;
      pre = time;
    }
  }
  print(Candy);
  exit(0);
}
