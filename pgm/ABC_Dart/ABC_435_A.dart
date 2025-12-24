import 'dart:io';

void main() {
  const int one = 1;
  const int two = 2;
  int N = int.parse(stdin.readLineSync()!);
  print(N * (one + N) ~/ two);
  exit(0);
}
