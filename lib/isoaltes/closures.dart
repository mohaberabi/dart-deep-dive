import 'dart:convert';
import 'dart:isolate';

const String filename = 'with_keys.json';

void main() async {
  final jsonData = await Isolate.run(() async {
    final fileData = {}.toString();
    await Future.delayed(const Duration(seconds: 4));
    final jsonData = jsonDecode(fileData) as Map<String, dynamic>;

    return jsonData;
  });

  print('Number of JSON keys: ${jsonData.length}');
}
