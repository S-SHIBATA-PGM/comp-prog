// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int a, int b, int c] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int zero = 0;
  print(switch (null) {
    _ when a == b => c,
    _ when b == c => a,
    _ when c == a => b,
    _ => zero,
  });
  exit(0);
}
