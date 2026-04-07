// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  const String fail = 'x';
  const String success = 'o';
  const int three = 3;
  const int zero = 0;
  final StringBuffer sb = StringBuffer();
  for (int i = 1; i <= N; i++) {
    if (i % three != zero) {
      sb.write(success);
    } else {
      sb.write(fail);
    }
  }
  print(sb.toString());
  exit(0);
}
