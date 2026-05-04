//  'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final Int32List N = Int32List.fromList(
    stdin.readLineSync()!.split('').map(int.parse).toList(),
  );
  const String Yes = 'Yes';
  const String No = 'No';
  const int one = 1;
  print(
    Iterable<int>.generate(N.length - one).every((i) => N[i] > N[i + one])
        ? Yes
        : No,
  );
  exit(0);
}
