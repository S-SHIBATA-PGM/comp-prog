import 'dart:io';
import 'dart:math';

void main() {
  final [int H, int B] = stdin
      .readLineSync()!
      .split(" ")
      .map(int.parse)
      .toList();
  print(max(H, B) - B);
  exit(0);
}
