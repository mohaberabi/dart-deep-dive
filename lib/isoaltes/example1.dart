import 'dart:convert';
import 'dart:isolate';

void main() async {
  final json = await Isolate.run(_readAndParseJson);
}

Future<Map<String, dynamic>> _readAndParseJson() async {
  final fileData = {}.toString();
  final jsonData = jsonDecode(fileData) as Map<String, dynamic>;
  return jsonData;
}
