import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  final bool isLightMode;
  final bool isEnglish;
  const Body({
    Key? key,
    required this.isLightMode,
    required this.isEnglish,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: isLightMode
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
            alignment: MediaQuery.of(context).size.width > 600
                ? Alignment.topLeft
                : Alignment.topCenter,
            padding: const EdgeInsets.all(
              16.0,
            ),
            color:
                isLightMode ? const Color(0xffffffff) : const Color(0xff333333),
            child: Column(
              children: [
                MediaQuery.of(context).size.width > 600
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: MediaQuery.of(context).size.width > 600
                                ? const EdgeInsets.only(right: 16)
                                : const EdgeInsets.all(0),
                            child: Image.asset(
                              "assets/images/profile.png",
                            ),
                          ),
                          MediaQuery.of(context).size.width > 600
                              ? Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SelectableText.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "<Hello World!/>",
                                              style: TextStyle(
                                                  color: Colors.green),
                                            ),
                                            TextSpan(
                                              text: "\n\n",
                                            ),
                                            TextSpan(
                                              text: "My name is ",
                                            ),
                                            TextSpan(
                                              text: "Takuya Sato",
                                              style: TextStyle(
                                                color: Colors.green,
                                              ),
                                            ),
                                            TextSpan(
                                              text: " and I'm ",
                                            ),
                                            TextSpan(
                                              text:
                                                  "world class digital transformation partner",
                                              style: TextStyle(
                                                color: Colors.green,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  "  for business owners solving social challenge.",
                                            ),
                                            TextSpan(text: "\n\n"),
                                            TextSpan(
                                              text:
                                                  "I definity believe that the future will be a wonderful world with digital innovation.",
                                            ),
                                            TextSpan(text: "\n\n"),
                                            TextSpan(
                                              text:
                                                  "My mission is technology innovation for this earth, so I'm going to provide leadership in emerging technology all over the world.",
                                            ),
                                            TextSpan(text: "\n\n"),
                                            TextSpan(
                                              text:
                                                  "And now I try not to dwell on what I've already achieved, therefore I'm constantly learning something new in order to further develop in the closen path.",
                                            ),
                                            TextSpan(text: "\n\n"),
                                            TextSpan(
                                              text:
                                                  "At the moment I'm interested in:",
                                            ),
                                            TextSpan(text: "\n"),
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
                    : Image.asset(
                        "assets/images/profile.png",
                      ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 16),
                  alignment: Alignment.topLeft,
                  height: 100,
                  color: Colors.black,
                  child: Row(children: const [
                    Text("hei"),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
