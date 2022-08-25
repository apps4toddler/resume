import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart' as window_size;
import 'package:get/route_manager.dart';
import 'package:window_manager/window_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './menu.dart';
import './body.dart';
import 'dart:io';

import './lang/worlds.dart';

void main() async {
  try {
    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      WidgetsFlutterBinding.ensureInitialized();
      // Must add this line.
      await windowManager.ensureInitialized();
      window_size.DesktopWindow.setMinWindowSize(const Size(300, 450));
      // window_size.DesktopWindow.setMaxWindowSize(const Size(600, 1000));
    }
  } catch (e) {
    e.toString();
  }
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> with TickerProviderStateMixin {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  bool _isLightMode = false;
  bool _isEnglish = false;

  @override
  void initState() {
    super.initState();
    initialize();
  }

  void initialize() async {
    SharedPreferences prefs = await _prefs;
    setState(() {
      _isLightMode = prefs.getBool("_isLightMode") ?? false;
    });
    setState(() {
      _isEnglish = prefs.getBool("_isEnglish") ?? false;
      Get.updateLocale(
        _isEnglish ? const Locale('en', 'US') : const Locale('ja', 'JP'),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Worlds(),
      locale: const Locale("ja", "JP"),
      fallbackLocale: const Locale("ja", "JP"),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Noto Sans JP",
      ),
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: "Noto Sans JP",
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
                    onToggleMode: (bool value) async {
                      SharedPreferences prefs = await _prefs;
                      prefs.setBool('_isLightMode', value);
                      setState(() {
                        _isLightMode = value;
                      });
                    },
                    onToggleLang: (bool value) async {
                      SharedPreferences prefs = await _prefs;
                      prefs.setBool('_isEnglish', value);
                      setState(() {
                        _isEnglish = value;
                      });
                      Get.updateLocale(
                        _isEnglish
                            ? const Locale('en', 'US')
                            : const Locale('ja', 'JP'),
                      );
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
