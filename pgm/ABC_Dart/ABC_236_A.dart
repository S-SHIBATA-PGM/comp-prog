// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final List<String> S = stdin.readLineSync()!.split('');
  final [int a, int b] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int one = 1;
  final keep = S[a - one];
  S[a - one] = S[b - one];
  S[b - one] = keep;
  print(S.join());
  exit(0);
}
