// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  const String yn = "\n";
  const int one = 1;
  print(Iterable.generate(N + one, (i) => N - i).join(yn));
  exit(0);
}
