import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart' as window_size;
import 'package:window_manager/window_manager.dart';
import './menu.dart';
import './body.dart';
import 'dart:io';

void main() async {
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    WidgetsFlutterBinding.ensureInitialized();
    // Must add this line.
    await windowManager.ensureInitialized();
    window_size.DesktopWindow.setMinWindowSize(const Size(300, 450));
    // window_size.DesktopWindow.setMaxWindowSize(const Size(600, 1000));
  }
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
  Widget build(BuildContext _context) {
    return MaterialApp(
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      themeMode: _isLightMode ? ThemeMode.light : ThemeMode.dark,
      home: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            backgroundColor: _isLightMode
                ? const Color(0xffffffff)
                : const Color(0xff666666),
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
                  Body(
                    isLightMode: _isLightMode,
                    isEnglish: _isEnglish,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
