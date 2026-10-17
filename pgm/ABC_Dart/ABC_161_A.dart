// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  var [int X, int Y, int Z] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String space = ' ';
  int keep = X;
  X = Y;
  Y = keep;
  keep = X;
  X = Z;
  Z = keep;
  print("$X" + space + "$Y" + space + "$Z");
  exit(0);
}
