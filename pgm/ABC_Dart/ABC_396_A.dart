// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  stdin.readLineSync()!;
  final List<int> A = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  final String Yes = "Yes";
  final String No = "No";
  final int times = 3;
  bool found = false;
  for (int i = 0; i <= A.length - times; i++) {
    final window = A.sublist(i, i + times);
    if (window.every((e) => e == window[0])) {
      found = true;
      break;
    }
  }
  print(found ? Yes : No);
  exit(0);
}
