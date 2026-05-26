// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final [int _, int D] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  final Int32List T = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const int one = 1;
  const int zero = 0;
  int click = -one;
  for (int i = zero; i < T.length - one; i++) {
    if (T[i + one] - T[i] <= D) {
      click = T[i + one];
      break;
    }
  }
  print(click);
  exit(0);
}
