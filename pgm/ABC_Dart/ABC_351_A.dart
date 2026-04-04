// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final Int32List A = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  final Int32List B = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const int one = 1;
  const int zero = 0;
  int sumA = zero;
  int sumB = zero;
  for (final a in A) sumA += a;
  for (final b in B) sumB += b;
  print(sumA - sumB + one);
  exit(0);
}
