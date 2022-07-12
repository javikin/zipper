import 'dart:convert';

import 'package:flutter/services.dart';

Future<dynamic> loadJsonResourcePath(String resourcePath) async {
  final data = await rootBundle.load(resourcePath);
  return json.decode(
    utf8.decode(
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
    ),
  );
}
