import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../utils/deviceutil.dart';

class Introduction extends StatelessWidget {
  final bool isLightMode;
  final bool isEnglish;

  const Introduction({
    Key? key,
    required this.isLightMode,
    required this.isEnglish,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLarge(context)
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: isLarge(context)
                    ? const EdgeInsets.only(right: 16)
                    : const EdgeInsets.all(0),
                child: Image.asset(
                  "assets/images/profile.png",
                ),
              ),
              isLarge(context)
                  ? Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SelectableText.rich(
                            TextSpan(
                              children: [
                                const TextSpan(
                                  text: "<Hello World!/>",
                                  style: TextStyle(color: Colors.green),
                                ),
                                const TextSpan(
                                  text: "\n\n",
                                ),
                                TextSpan(
                                  text: "My name is ".tr,
                                ),
                                TextSpan(
                                  text: "Takuya Sato".tr,
                                  style: const TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                                TextSpan(
                                  text: " and I'm ".tr,
                                ),
                                TextSpan(
                                  text:
                                      "world class digital transformation partner"
                                          .tr,
                                  style: const TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      " for business owners solving social challenge."
                                          .tr,
                                ),
                                const TextSpan(text: "\n\n"),
                                TextSpan(
                                  text:
                                      "I definity believe that the future will be a wonderful world with digital innovation."
                                          .tr,
                                ),
                                const TextSpan(text: "\n\n"),
                                TextSpan(
                                  text:
                                      "My mission is technology innovation for this earth, so I'm going to provide leadership in emerging technology all over the world."
                                          .tr,
                                ),
                                const TextSpan(text: "\n\n"),
                                TextSpan(
                                  text:
                                      "And now I try not to dwell on what I've already achieved, therefore I'm constantly learning something new in order to further develop in the closen path."
                                          .tr,
                                ),
                                const TextSpan(text: "\n\n"),
                                TextSpan(
                                  text: "At the moment I'm interested in:".tr,
                                ),
                                const TextSpan(text: "\n"),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Tooltip(
                                message: "flutter",
                                child: SvgPicture.asset(
                                  'assets/icons/icon-flutter.svg',
                                  semanticsLabel: 'flutter',
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Tooltip(
                                message: "dart",
                                child: SvgPicture.asset(
                                  'assets/icons/icon-dart.svg',
                                  semanticsLabel: 'dart',
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Tooltip(
                                message: "kotlin",
                                child: SvgPicture.asset(
                                  'assets/icons/icon-kotlin.svg',
                                  semanticsLabel: 'kotlin',
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : Container(),
            ],
          )
        : Column(
            children: [
              Image.asset(
                "assets/images/profile.png",
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  SelectableText.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: "<Hello World!/>",
                          style: TextStyle(color: Colors.green),
                        ),
                        const TextSpan(
                          text: "\n\n",
                        ),
                        TextSpan(
                          text: "My name is ".tr,
                        ),
                        TextSpan(
                          text: "Takuya Sato".tr,
                          style: const TextStyle(
                            color: Colors.green,
                          ),
                        ),
                        TextSpan(
                          text: " and I'm ".tr,
                        ),
                        TextSpan(
                          text: "world class digital transformation partner".tr,
                          style: const TextStyle(
                            color: Colors.green,
                          ),
                        ),
                        TextSpan(
                          text:
                              "  for business owners solving social challenge."
                                  .tr,
                        ),
                        const TextSpan(text: "\n\n"),
                        TextSpan(
                          text:
                              "I definity believe that the future will be a wonderful world with digital innovation."
                                  .tr,
                        ),
                        const TextSpan(text: "\n\n"),
                        TextSpan(
                          text:
                              "My mission is technology innovation for this earth, so I'm going to provide leadership in emerging technology all over the world."
                                  .tr,
                        ),
                        const TextSpan(text: "\n\n"),
                        TextSpan(
                          text:
                              "And now I try not to dwell on what I've already achieved, therefore I'm constantly learning something new in order to further develop in the closen path."
                                  .tr,
                        ),
                        const TextSpan(text: "\n\n"),
                        TextSpan(
                          text: "At the moment I'm interested in:".tr,
                        ),
                        const TextSpan(text: "\n"),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Tooltip(
                        message: "flutter",
                        child: SvgPicture.asset(
                          'assets/icons/icon-flutter.svg',
                          semanticsLabel: 'flutter',
                          width: 24,
                          height: 24,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Tooltip(
                        message: "dart",
                        child: SvgPicture.asset(
                          'assets/icons/icon-dart.svg',
                          semanticsLabel: 'dart',
                          width: 24,
                          height: 24,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Tooltip(
                        message: "kotlin",
                        child: SvgPicture.asset(
                          'assets/icons/icon-kotlin.svg',
                          semanticsLabel: 'kotlin',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
  }
}
