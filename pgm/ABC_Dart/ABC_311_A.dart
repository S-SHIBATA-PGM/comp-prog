// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  stdin.readLineSync()!;
  final List<String> S = stdin.readLineSync()!.split('');
  const int one = 1;
  const int three = 3;
  const int zero = 0;
  final Set<String> set = {};
  for (int i = zero; i < S.length; i++) {
    set.add(S[i]);
    if (set.length == three) {
      print(i + one);
      break;
    }
  }
  exit(0);
}
