import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final bool isLightMode;
  final bool isEnglish;
  final Function(bool)? onToggleMode;
  final Function(bool)? onToggleLang;

  const Menu({
    Key? key,
    required this.isLightMode,
    required this.isEnglish,
    required this.onToggleMode,
    required this.onToggleLang,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Switch(
            value: isLightMode,
            onChanged: (value) => onToggleMode!(value),
            activeThumbImage: const AssetImage("assets/images/icon-light.png"),
            inactiveThumbImage: const AssetImage("assets/images/icon-dark.png"),
          ),
          Switch(
            value: isEnglish,
            onChanged: (value) => onToggleLang!(value),
            activeThumbImage: const AssetImage("assets/images/icon-en.png"),
            inactiveThumbImage: const AssetImage("assets/images/icon-jp.png"),
          ),
        ],
      ),
    );
  }
}
