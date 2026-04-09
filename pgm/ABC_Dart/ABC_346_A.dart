// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  stdin.readLineSync()!;
  final Int32List A = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const String space = ' ';
  const int one = 1;
  print(
    Iterable<int>.generate(A.length - one, (i) {
      return A[i] * A[i + one];
    }).join(space),
  );
  exit(0);
}
