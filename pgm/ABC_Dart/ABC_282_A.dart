// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int K = int.parse(stdin.readLineSync()!);
  const String A = 'A';
  const int zero = 0;
  print(
    String.fromCharCodes(Iterable.generate(K, (i) => A.codeUnitAt(zero) + i)),
  );
  exit(0);
}
