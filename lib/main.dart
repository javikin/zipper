import 'package:flutter/material.dart';
import 'package:zipper/locator.dart';
import 'package:zipper/modules/zip_code_page.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zipper',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ZipCodePage(),
    );
  }
}
