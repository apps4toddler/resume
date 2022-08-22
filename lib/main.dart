import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Text(
      "Hello World,日本語も可能",
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontSize: 32,
        color: Colors.black87,
      ),
    );
  }
}
