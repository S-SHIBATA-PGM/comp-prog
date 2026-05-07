// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int N, int M, int P] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  int num = 0;
  int day = 0;
  while (day < N) {
    day = M + num * P;
    if (day > N) {
      break;
    }
    num++;
  }
  print(num);
  exit(0);
}
