// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

const int two = 2;
const int three = 3;

int f(int x) => x * x + two * x + three;

void main() {
  final int t = int.parse(stdin.readLineSync()!);
  print(f(f(f(t) + t) + f(f(t))));
  exit(0);
}
