// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  stdin.readLineSync()!;
  final List<int> A = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  final String Yes = "Yes";
  final String No = "No";
  final int one = 1;
  print(
    Iterable<int>.generate(A.length - one).every((i) => A[i] < A[i + one])
        ? Yes
        : No,
  );
  exit(0);
}
