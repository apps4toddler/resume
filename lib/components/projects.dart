import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  final bool isLightMode;
  final bool isEnglish;

  const Projects({
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
          Text("Projects", style: Theme.of(context).textTheme.headline6),
          Container(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
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
                  for (var i = 0; i < 10; i++)
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
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 16,
                                bottom: 16,
                                right: 16,
                              ),
                              child: Text(
                                "docuForce Mobile[iOS]",
                                style: TextStyle(
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
                                    i % 2 == 0 ? "Commercial" : "Private",
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 16,
                                bottom: 16,
                                right: 16,
                              ),
                              child: Text(
                                "The app for an online cinema with the ability to authorize, rate, comment and watch movies",
                              ),
                            ),
                          ),
                          const Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 16,
                                bottom: 16,
                                right: 16,
                              ),
                              child: Text(
                                "Cordova, TypeScript, React, Redux, SASS/SCSS, Webpack",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              )),
        ],
      ),
    );
  }
}
