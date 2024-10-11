import 'dart:convert';

import 'dart:io';

const String filename = 'with_keys.json';

void main() {
  final fileData = _readFileSync();

  print('Number of JSON keys: ${fileData.length}');
}

String _readFileSync() {
  final contents = "some contents";
  for (int i = 0; i < 100000000000; i++) {}
  return contents.trim();
}
