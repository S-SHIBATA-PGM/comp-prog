// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  final String blank = '';
  final List<String> T = stdin.readLineSync()!.split(blank);
  final List<String> A = stdin.readLineSync()!.split(blank);
  final String circle = 'o';
  final String Yes = 'Yes';
  final String No = 'No';
  final int zero = 0;
  print(
    Iterable<int>.generate(
              N,
            ).where((i) => T[i] == circle && T[i] == A[i]).length >
            zero
        ? Yes
        : No,
  );
  exit(0);
}
