// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final Int32List A = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList()..sort(),
  );
  const String Yes = "Yes";
  const String No = "No";
  const int one = 1;
  const int two = 2;
  const int zero = 0;
  print(A[two] - A[one] == A[one] - A[zero] ? Yes : No);
  exit(0);
}
