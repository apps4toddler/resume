import 'package:flutter/material.dart';

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

  static final List<ExperienceItem> experiences = [
    ExperienceItem("Marchi 2020", "present", "Deloitte Digital", "Incubator"),
    ExperienceItem(
        "Marchi 2018", "Marchi 2018", "Deloitte Digital", "Incubator"),
    ExperienceItem(
        "Marchi 2011", "Marchi 2018", "Deloitte Digital", "Incubator"),
    ExperienceItem(
        "Marchi 2020", "Marchi 2018", "Deloitte Digital", "Incubator"),
    ExperienceItem(
        "Marchi 2020", "Marchi 2018", "Deloitte Digital", "Incubator"),
    ExperienceItem(
        "Marchi 2020", "Marchi 2018", "Deloitte Digital", "Incubator"),
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
          Text("Professional experience",
              style: Theme.of(context).textTheme.headline6),
          Center(
            child: Column(
              children: [
                for (var i = 0; i < experiences.length; i++)
                  IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: i % 2 == 0
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
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
                        ),
                        Expanded(
                          child: i % 2 == 1
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
