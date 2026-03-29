// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final [int _, int M] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  final Int32List H = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const int zero = 0;
  int cnt = zero;
  int sum = zero;
  for (final int h in H) {
    sum += h;
    if (sum > M) {
      break;
    }
    cnt++;
  }
  print(cnt);
  exit(0);
}
