// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const int one = 1;
  print(
    S.split('').indexWhere((s) {
          return s == s.toUpperCase();
        }) +
        one,
  );
  exit(0);
}
