// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int a, int b] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String Yes = 'Yes';
  const String No = 'No';
  const int one = 1;
  const int divisor = 10;
  const int zero = 0;
  int prv = (a - one) % divisor;
  int nxt = (a + one) % divisor;
  if (prv == zero) {
    prv += divisor;
  }
  if (nxt == zero) {
    nxt += divisor;
  }
  print(b == prv || b == nxt ? Yes : No);
  exit(0);
}
