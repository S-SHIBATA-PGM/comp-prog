// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final List<String> S = stdin.readLineSync()!.split('');
  final String blank = '';
  const int one = 1;
  const int two = 2;
  const int zero = 0;
  final int len = (S.length ~/ two) - one;
  for (int i = zero; i <= len; i++) {
    final int idx1 = two * i;
    final int idx2 = two * i + one;
    final String keep = S[idx1];
    S[idx1] = S[idx2];
    S[idx2] = keep;
  }
  print(S.join(blank));
  exit(0);
}
