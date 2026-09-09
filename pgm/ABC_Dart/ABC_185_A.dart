// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  print(stdin.readLineSync()!.split(' ').map(int.parse).reduce(min));
  exit(0);
}
