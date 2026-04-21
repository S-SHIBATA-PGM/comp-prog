//  'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int B, int G] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String Bat = 'Bat';
  const String Glove = 'Glove';
  print(B > G ? Bat : Glove);
  exit(0);
}
