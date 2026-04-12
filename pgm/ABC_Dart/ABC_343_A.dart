// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int A, int B] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int zero = 0;
  const int nine = 9;
  for (int i = zero; i <= nine; i++) {
    if (i != A + B) {
      print(i);
      break;
    }
  }
  exit(0);
}
