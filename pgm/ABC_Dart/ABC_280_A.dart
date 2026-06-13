// import 'dart:collection';
import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() async {
  stdin.readLineSync()!;
  const String sharp = '#';
  const int zero = 0;
  print(
    (await stdin.transform(utf8.decoder).join()).codeUnits
        .where((c) => c == sharp.codeUnitAt(zero))
        .length,
  );
  exit(0);
}
