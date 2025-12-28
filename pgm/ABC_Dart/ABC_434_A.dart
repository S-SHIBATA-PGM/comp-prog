import 'dart:io';

void main() {
  final [int W, int B] = stdin
      .readLineSync()!
      .split(" ")
      .map(int.parse)
      .toList();
  const int one = 1;
  const int thousand = 1000;
  print((W * thousand / B + one).toInt());
  exit(0);
}
