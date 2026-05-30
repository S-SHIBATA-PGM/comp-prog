// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  stdin.readLineSync()!;
  final Int32List A = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const String space = ' ';
  const int two = 2;
  const int zero = 0;
  print(A.where((a) => a % two == zero).join(space));
  exit(0);
}
