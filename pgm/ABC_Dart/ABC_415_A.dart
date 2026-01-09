// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  stdin.readLineSync()!;
  final List<int> A = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  final int X = int.parse(stdin.readLineSync()!);
  final String Yes = 'Yes';
  final String No = 'No';
  if (A.contains(X)) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
