import 'package:flutter/material.dart';

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
              Container(
                alignment: Alignment.topRight,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Switch(
                      value: _isLightMode,
                      onChanged: (bool value) {
                        setState(() {
                          _isLightMode = value;
                        });
                      },
                      activeThumbImage:
                          const AssetImage("assets/images/icon-light.png"),
                      inactiveThumbImage:
                          const AssetImage("assets/images/icon-dark.png"),
                    ),
                    Switch(
                      value: _isEnglish,
                      onChanged: (bool value) {
                        setState(() {
                          _isEnglish = value;
                        });
                      },
                      activeThumbImage:
                          const AssetImage("assets/images/icon-en.png"),
                      inactiveThumbImage:
                          const AssetImage("assets/images/icon-jp.png"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
