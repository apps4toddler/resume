import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Contacts extends StatelessWidget {
  final bool isLightMode;
  final bool isEnglish;

  const Contacts({
    Key? key,
    required this.isLightMode,
    required this.isEnglish,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 264,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Contacts", style: Theme.of(context).textTheme.headline6),
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              right: 0,
              bottom: 8,
              left: 0,
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/icon-mail.svg',
                  semanticsLabel: 'mail',
                  width: 24,
                  height: 24,
                  color: isLightMode ? Colors.blue : Colors.white,
                ),
                const SizedBox(width: 16),
                const Text("business@satotakuya.jp"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              right: 0,
              bottom: 8,
              left: 0,
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/icon-phone.svg',
                  semanticsLabel: 'phone',
                  width: 24,
                  height: 24,
                  color: isLightMode ? Colors.black54 : Colors.white,
                ),
                const SizedBox(width: 16),
                const Text("(+81)-90-4448-7444"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              right: 0,
              bottom: 8,
              left: 0,
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/icon-line.svg',
                  semanticsLabel: 'line',
                  width: 24,
                  height: 24,
                  color: isLightMode ? const Color(0xff06C755) : Colors.white,
                ),
                const SizedBox(width: 16),
                const Text("satotaku1983"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8,
              right: 0,
              bottom: 8,
              left: 0,
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/icon-wakatime.svg',
                  semanticsLabel: 'wakatime',
                  width: 24,
                  height: 24,
                  color: isLightMode ? Colors.black : Colors.white,
                ),
                const SizedBox(width: 16),
                SvgPicture.asset(
                  'assets/icons/icon-github.svg',
                  semanticsLabel: 'github',
                  width: 24,
                  height: 24,
                  color: isLightMode ? Colors.black : Colors.white,
                ),
                const SizedBox(width: 16),
                SvgPicture.asset(
                  'assets/icons/icon-linkedin.svg',
                  semanticsLabel: 'linkedin',
                  width: 24,
                  height: 24,
                  color: isLightMode ? const Color(0xff0A66C2) : Colors.white,
                ),
                const SizedBox(width: 16),
                SvgPicture.asset(
                  'assets/icons/icon-twitter.svg',
                  semanticsLabel: 'twitter',
                  width: 24,
                  height: 24,
                  color: isLightMode ? const Color(0xff1DA1F2) : Colors.white,
                ),
                const SizedBox(width: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
