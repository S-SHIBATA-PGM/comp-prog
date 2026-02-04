// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final List<int> A = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  const String Yes = 'Yes';
  const String No = 'No';
  const int one = 1;
  const int zero = 0;
  final List<int> indice = Iterable<int>.generate(
    A.length - one,
  ).where((i) => A[i] > A[i + one]).toList();
  if (indice.length == one) {
    final int i = indice[zero];
    final List<int> list = [...A];
    final int keep = list[i];
    list[i] = list[i + one];
    list[i + one] = keep;
    if (Iterable<int>.generate(
      list.length - one,
    ).every((i) => list[i] < list[i + one])) {
      print(Yes);
    } else {
      print(No);
    }
  } else {
    print(No);
  }
  exit(0);
}
