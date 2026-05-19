// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  const int two = 2;
  const int five = 5;
  print(((N + (five ~/ two)) ~/ five) * five);
  exit(0);
}
