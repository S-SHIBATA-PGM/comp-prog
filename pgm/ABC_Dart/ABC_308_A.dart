// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final Int32List A = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const String Yes = 'Yes';
  const String No = 'No';
  const int twentyFive = 25;
  const int hundred = 100;
  const int sixHundredSeventyFive = 675;
  const int zero = 0;
  bool isValid = true;
  for (int i = zero; i < A.length; i++) {
    if (A[i] < hundred ||
        A[i] > sixHundredSeventyFive ||
        A[i] % twentyFive != zero) {
      isValid = false;
      break;
    }
    if (i > 0 && A[i - 1] > A[i]) {
      isValid = false;
      break;
    }
  }
  print(isValid ? Yes : No);
  exit(0);
}
