// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final String S = stdin.readLineSync()!;
  final int a = 'a'.codeUnitAt(0);
  final int z = 'z'.codeUnitAt(0);
  for (int i = a; i <= z; i++) {
    if (!S.codeUnits.contains(i)) {
      print(String.fromCharCode(i));
      break;
    }
  }
  exit(0);
}
