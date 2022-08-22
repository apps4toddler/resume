import 'package:flutter/material.dart';
import './menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> with TickerProviderStateMixin {
  bool _isLightMode = false;
  bool _isEnglish = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      themeMode: _isLightMode ? ThemeMode.light : ThemeMode.dark,
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Menu(
                isLightMode: _isLightMode,
                isEnglish: _isEnglish,
                onToggleMode: (bool value) {
                  setState(() {
                    _isLightMode = value;
                  });
                },
                onToggleLang: (bool value) {
                  setState(() {
                    _isEnglish = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
