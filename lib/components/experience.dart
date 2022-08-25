import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume/utils/deviceutil.dart';

class ExperienceItem {
  String from;
  String to;
  String place;
  String role;
  ExperienceItem(this.from, this.to, this.place, this.role);
}

class Experience extends StatelessWidget {
  final bool isLightMode;
  final bool isEnglish;

  // 1 January
  // 2 February
  // 3 March
  // 4 April
  // 5 May
  // 6 June
  // 7 July
  // 8 August
  // 9 September
  //10 October
  //11 November
  //12 December

  static final List<ExperienceItem> experiences = [
    ExperienceItem(
      "March 2020",
      "present",
      "Deloitte Digital",
      "Chief Engineer",
    ),
    ExperienceItem(
      "Marchi 2020",
      "present",
      "Deloitte ",
      "Studio Senior Manager",
    ),
    ExperienceItem(
      "April 2016",
      "March 2020",
      "for Startup Ventures",
      "Spot CTO & Parallels CTO",
    ),
    ExperienceItem(
      "Jly 2015",
      "March 2020",
      "Feel Sync System",
      "VP Business Development",
    ),
    ExperienceItem(
      "April 2013",
      "March 2015",
      "Willgate Vietnum",
      "CEO",
    ),
    ExperienceItem(
      "April 2008",
      "March 2015",
      "Willgate",
      "CTO",
    ),
    ExperienceItem(
      "April 2003",
      "March 2007",
      "Fujitsu",
      "Engineer",
    ),
  ];

  const Experience({
    Key? key,
    required this.isLightMode,
    required this.isEnglish,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Professional experience".tr,
              style: Theme.of(context).textTheme.headline6),
          Center(
            child: Column(
              children: [
                for (var i = 0; i < experiences.length; i++)
                  IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        !isLarge(context)
                            ? Expanded(flex: 1, child: Container())
                            : Container(),
                        Expanded(
                          flex: isLarge(context) ? 1 : 4,
                          child: isLarge(context) && i % 2 == 0
                              ? Column(
                                  crossAxisAlignment: isLarge(context)
                                      ? CrossAxisAlignment.end
                                      : CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(
                                        top: 4,
                                        right: 16,
                                        bottom: 4,
                                        left: 16,
                                      ),
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            width: 3,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        " ${experiences[i].from} - ${experiences[i].to}",
                                        style: const TextStyle(
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        top: 8,
                                        right: 16,
                                        bottom: 4,
                                        left: 16,
                                      ),
                                      child: Text(
                                        experiences[i].place,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        top: 4,
                                        right: 16,
                                        bottom: 4,
                                        left: 16,
                                      ),
                                      child: Text(
                                        experiences[i].role,
                                        style: const TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : !isLarge(context)
                                  ? Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                            top: 4,
                                            right: 16,
                                            bottom: 4,
                                            left: 16,
                                          ),
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                width: 3,
                                                color: Colors.green,
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            " ${experiences[i].from} - ${experiences[i].to}",
                                            style: const TextStyle(
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(
                                            top: 8,
                                            right: 16,
                                            bottom: 4,
                                            left: 16,
                                          ),
                                          child: Text(
                                            experiences[i].place,
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(
                                            top: 4,
                                            right: 16,
                                            bottom: 4,
                                            left: 16,
                                          ),
                                          child: Text(
                                            experiences[i].role,
                                            style: const TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  : Container(),
                        ),
                        Container(
                          width: 8,
                          color: Colors.green,
                          margin: !isLarge(context)
                              ? const EdgeInsets.only(right: 32)
                              : null,
                        ),
                        isLarge(context)
                            ? Expanded(
                                child: i % 2 == 1
                                    ? Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.only(
                                              top: 4,
                                              right: 16,
                                              bottom: 4,
                                              left: 16,
                                            ),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                  width: 3,
                                                  color: Colors.green,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              " ${experiences[i].from} - ${experiences[i].to}",
                                              style: const TextStyle(
                                                color: Colors.green,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                              top: 8,
                                              right: 16,
                                              bottom: 4,
                                              left: 16,
                                            ),
                                            child: Text(
                                              experiences[i].place,
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                              top: 4,
                                              right: 16,
                                              bottom: 4,
                                              left: 16,
                                            ),
                                            child: Text(
                                              experiences[i].role,
                                              style: const TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    : Container(),
                              )
                            : Container(),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
