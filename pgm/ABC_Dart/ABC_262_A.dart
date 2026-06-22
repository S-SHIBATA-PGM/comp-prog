// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int Y = int.parse(stdin.readLineSync()!);
  const int two = 2;
  const int four = 4;
  const int zero = 0;
  final int target =
      Y + (four - two) - Y % four + (Y % four > two ? four : zero);
  print(target);
  exit(0);
}
