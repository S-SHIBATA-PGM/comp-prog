import 'dart:io';

void main() {
  final [int X, int Y, int Z] = stdin
      .readLineSync()!
      .split(" ")
      .map(int.parse)
      .toList();
  const String Yes = "Yes";
  const String No = "No";
  const int zero = 0;
  print((X - Y * Z) >= zero && (X - Y * Z) % (Z - 1) == zero ? Yes : No);
  exit(0);
}
