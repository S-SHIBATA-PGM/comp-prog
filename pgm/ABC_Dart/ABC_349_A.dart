// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  stdin.readLineSync()!;
  final Int32List A = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const int zero = 0;
  int sum = zero;
  for (final int a in A) {
    sum += a;
  }
  print(-sum);
  exit(0);
}
