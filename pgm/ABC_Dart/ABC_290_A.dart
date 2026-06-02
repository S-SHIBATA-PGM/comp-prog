// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  stdin.readLineSync()!;
  final Int32List A = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  final Int32List B = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const int one = 1;
  const int zero = 0;
  print(B.map((b) => A[b - one]).fold<int>(zero, (pre, cur) => pre + cur));
  exit(0);
}
