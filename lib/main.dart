import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart' as window_size;
import 'package:window_manager/window_manager.dart';
import './menu.dart';
import 'dart:io';

void main() async {
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    WidgetsFlutterBinding.ensureInitialized();
    // Must add this line.
    await windowManager.ensureInitialized();
    window_size.DesktopWindow.setMinWindowSize(const Size(150, 450));
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
                  Expanded(
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: _isLightMode
                                  ? const Color(0xffeeeeee)
                                  : const Color(0xff999999),
                              blurRadius: 10.0,
                              spreadRadius: 5.0,
                              offset: const Offset(
                                0,
                                0,
                              ),
                            )
                          ],
                        ),
                        margin: MediaQuery.of(context).size.width > 600
                            ? const EdgeInsets.only(
                                top: 0,
                                right: 16,
                                bottom: 16,
                                left: 16,
                              )
                            : const EdgeInsets.all(
                                0,
                              ),
                        constraints: const BoxConstraints(
                          maxWidth: 1280,
                          maxHeight: 1000,
                        ),
                        width: double.infinity,
                        child: Container(
                          color: _isLightMode
                              ? const Color(0xffffffff)
                              : const Color(0xff333333),
                        ),
                      ),
                    ),
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
