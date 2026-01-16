// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final [int _, int S] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  final List<int> T = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  final String yes = 'Yes';
  final String no = 'No';
  final int zero = 0;
  int pre = zero;
  String awake = yes;
  for (int i = zero; i < T.length; i++) {
    if (S < T[i] - pre) {
      awake = no;
      break;
    }
    pre = T[i];
  }
  print(awake);
  exit(0);
}
