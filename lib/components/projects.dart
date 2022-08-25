import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/deviceutil.dart';

class ProjectItem {
  String title;
  String type;
  String description;
  String technologies;
  ProjectItem(this.title, this.type, this.description, this.technologies);
}

class Projects extends StatelessWidget {
  final bool isLightMode;
  final bool isEnglish;

  static List<ProjectItem> items = [
    ProjectItem(
      "Resume",
      "Private",
      "The resource you are currently on :)",
      "Dart, Flutter",
    ),
  ];

  const Projects({
    Key? key,
    required this.isLightMode,
    required this.isEnglish,
  }) : super(key: key);

  List<Widget> genItem(BuildContext context) {
    List<Widget> widgets = [];
    for (var i = 0; i < items.length; i++) {
      widgets.add(
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
          ),
          child: Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    items[i].title,
                    style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: const EdgeInsets.only(
                      top: 2,
                      bottom: 2,
                      right: 8,
                      left: 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                      color: Colors.green.shade100,
                    ),
                    child: Text(
                      items[i].type,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 32,
              ),
            ],
          ),
        ),
      );
      widgets.add(
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              items[i].description,
            ),
          ),
        ),
      );
      widgets.add(
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              items[i].technologies,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      );

      widgets.add(
        Container(
          height: 16,
          margin: const EdgeInsets.only(right: 32),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: Colors.green,
              ),
            ),
          ),
        ),
      );
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Projects".tr, style: Theme.of(context).textTheme.headline6),
          Container(
            alignment: Alignment.topLeft,
            child: Column(
                children: !isSmall(context)
                    ? [
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.green,
                                width: 1,
                              ),
                            ),
                          ),
                          child: Row(
                            children: const [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 16,
                                    bottom: 16,
                                  ),
                                  child: Text(
                                    "Title",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: 16,
                                      bottom: 16,
                                    ),
                                    child: Text(
                                      "Type",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 16,
                                    bottom: 16,
                                  ),
                                  child: Text(
                                    "Description",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 16,
                                    bottom: 16,
                                  ),
                                  child: Text(
                                    "Technologies",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        for (var i = 0; i < items.length; i++)
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.green,
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 16,
                                      bottom: 16,
                                      right: 16,
                                    ),
                                    child: Text(
                                      items[0].title,
                                      style: const TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 16,
                                        bottom: 16,
                                        right: 16,
                                      ),
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          top: 2,
                                          bottom: 2,
                                          right: 8,
                                          left: 8,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            16,
                                          ),
                                          color: Colors.green.shade100,
                                        ),
                                        child: Text(
                                          items[i].type,
                                          style: const TextStyle(
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 16,
                                      bottom: 16,
                                      right: 16,
                                    ),
                                    child: Text(
                                      items[i].description,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 16,
                                      bottom: 16,
                                      right: 16,
                                    ),
                                    child: Text(
                                      items[i].technologies,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ]
                    : genItem(context)),
          ),
        ],
      ),
    );
  }
}
