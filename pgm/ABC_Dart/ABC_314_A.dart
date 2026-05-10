// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final N = int.parse(stdin.readLineSync()!);
  const String pi1 = "3.1415926535897932384626433832795028841971693993751";
  const String pi2 = "058209749445923078164062862089986280348253421170679";
  const int two = 2;
  const int zero = 0;
  String pi = [pi1, pi2].join();
  print(pi.substring(zero, N + two));
  exit(0);
}
