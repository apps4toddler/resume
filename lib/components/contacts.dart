import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class Contacts extends HookWidget {
  final bool isLightMode;
  final bool isEnglish;

  const Contacts({
    Key? key,
    required this.isLightMode,
    required this.isEnglish,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hoverMail = useState(false);
    final hoverTel = useState(false);
    final hoverLine = useState(false);
    return Column(
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
              const SizedBox(
                width: 16,
              ),
              SelectableText.rich(
                TextSpan(
                  text: "business@satotakuya.jp",
                  style: TextStyle(
                    decoration:
                        hoverMail.value ? TextDecoration.underline : null,
                    color: Colors.grey,
                  ),
                  onEnter: (_) => hoverMail.value = true,
                  onExit: (_) => hoverMail.value = false,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      await launchUrl(
                        Uri.parse(
                          "mailto:business@satotakuya.jp?subject=Contact from Resume&body=Dear resume owner",
                        ),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                ),
              ),
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
              SelectableText.rich(
                TextSpan(
                  text: "(+81)-90-4448-7444",
                  style: TextStyle(
                    decoration:
                        hoverTel.value ? TextDecoration.underline : null,
                    color: Colors.grey,
                  ),
                  onEnter: (_) => hoverTel.value = true,
                  onExit: (_) => hoverTel.value = false,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      await launchUrl(
                          Uri.parse(
                            "tel:080-4448-7444",
                          ),
                          mode: LaunchMode.externalApplication);
                    },
                ),
              ),
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
              SelectableText.rich(
                TextSpan(
                  text: "satotaku1983",
                  style: TextStyle(
                    decoration:
                        hoverLine.value ? TextDecoration.underline : null,
                    color: Colors.grey,
                  ),
                  onEnter: (_) => hoverLine.value = true,
                  onExit: (_) => hoverLine.value = false,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      await launchUrl(
                          Uri.parse(
                            "https://line.me/ti/p/MHaLuptUa9",
                          ),
                          mode: LaunchMode.externalApplication);
                    },
                ),
              ),
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
              Tooltip(
                message: "wakatime",
                child: IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/icon-wakatime.svg',
                    semanticsLabel: 'wakatime',
                    width: 24,
                    height: 24,
                    color: isLightMode ? Colors.black : Colors.white,
                  ),
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse(
                        "https://wakatime.com/@apps4toddler",
                      ),
                      mode: LaunchMode.externalApplication,
                    );
                  },
                ),
              ),
              const SizedBox(width: 16),
              Tooltip(
                message: "github",
                child: IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/icon-github.svg',
                    semanticsLabel: 'github',
                    width: 24,
                    height: 24,
                    color: isLightMode ? Colors.black : Colors.white,
                  ),
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse(
                        "https://github.com/apps4toddler",
                      ),
                      mode: LaunchMode.externalApplication,
                    );
                  },
                ),
              ),
              const SizedBox(width: 16),
              Tooltip(
                message: "linkein",
                child: IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/icon-linkedin.svg',
                    semanticsLabel: 'linkedin',
                    width: 24,
                    height: 24,
                    color: isLightMode ? const Color(0xff0A66C2) : Colors.white,
                  ),
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse(
                        "https://www.linkedin.com/in/satotakuya/",
                      ),
                      mode: LaunchMode.externalApplication,
                    );
                  },
                ),
              ),
              const SizedBox(width: 16),
              Tooltip(
                message: "twitter",
                child: IconButton(
                  icon: SvgPicture.asset(
                    'assets/icons/icon-twitter.svg',
                    semanticsLabel: 'twitter',
                    width: 24,
                    height: 24,
                    color: isLightMode ? const Color(0xff1DA1F2) : Colors.white,
                  ),
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse(
                        "https://twitter.com/s_urayasufamily",
                      ),
                      mode: LaunchMode.externalApplication,
                    );
                  },
                ),
              ),
              const SizedBox(width: 16),
            ],
          ),
        ),
      ],
    );
  }
}
