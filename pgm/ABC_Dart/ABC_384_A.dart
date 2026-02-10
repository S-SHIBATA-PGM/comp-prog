// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final List<String> arr = stdin.readLineSync()!.split(' ');
  final String S = stdin.readLineSync()!;
  const int one = 1;
  const int two = 2;
  const int zero = 0;
  final [int _, String c1, String c2] = <dynamic>[
    int.parse(arr[zero]),
    arr[one],
    arr[two],
  ];
  print(S.replaceAll(RegExp('[^${RegExp.escape(c1)}]'), c2));
  exit(0);
}
