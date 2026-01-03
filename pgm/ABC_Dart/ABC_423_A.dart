// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final [int X, int C] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int thousand = 1000;
  const int zero = 0;
  int withdrawal = zero;
  for (int i = thousand * (X ~/ thousand); zero < i; i -= thousand) {
    if (zero <= X - (i + C * (i ~/ thousand))) {
      withdrawal = i;
      break;
    }
  }
  print(withdrawal);
  exit(0);
}
