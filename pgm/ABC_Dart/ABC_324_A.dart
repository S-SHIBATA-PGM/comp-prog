//  'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  stdin.readLineSync()!;
  final Int32List A = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const String Yes = "Yes";
  const String No = "No";
  const int zero = 0;
  if (A.every((a) => a == A[zero])) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
