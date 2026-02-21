// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final List<String> A = stdin.readLineSync()!.split(' ').toList();
  const int one = 1;
  const int two = 2;
  const int zero = 0;
  final Map<String, int> cnt = A.fold<Map<String, int>>({}, (m, s) {
    m[s] = (m[s] ?? zero) + one;
    return m;
  });
  print(cnt.values.fold<int>(zero, (sum, count) => sum + (count ~/ two)));
}
