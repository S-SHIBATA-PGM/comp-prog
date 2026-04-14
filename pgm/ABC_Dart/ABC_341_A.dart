// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  const String sOne = '1';
  const String sZero = '0';
  const int one = 1;
  const int two = 2;
  const int zero = 0;
  print(
    List.generate(two * N + one, (int i) {
      return (i % two != zero) ? sZero : sOne;
    }).join(),
  );
  exit(0);
}
