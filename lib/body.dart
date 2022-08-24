import 'package:flutter/material.dart';
import 'package:resume/components/introduction.dart';
import 'package:resume/components/publication.dart';
import './components/skills.dart';
import './components/contacts.dart';
import './components/experience.dart';
import './components/projects.dart';
import './components/education.dart';

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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Introduction(
                    isLightMode: isLightMode,
                    isEnglish: isEnglish,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 250,
                          child: Column(
                            children: [
                              Contacts(
                                isLightMode: isLightMode,
                                isEnglish: isEnglish,
                              ),
                              const SizedBox(height: 16),
                              false
                                  // ignore: dead_code
                                  ? Skills(
                                      isLightMode: isLightMode,
                                      isEnglish: isEnglish,
                                    )
                                  : const SizedBox(
                                      width: 0,
                                    ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 32),
                                child: Skills(
                                  isLightMode: isLightMode,
                                  isEnglish: isEnglish,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 32),
                                child: Education(
                                  isLightMode: isLightMode,
                                  isEnglish: isEnglish,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 32),
                                child: Experience(
                                  isLightMode: isLightMode,
                                  isEnglish: isEnglish,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 32),
                                child: Projects(
                                  isLightMode: isLightMode,
                                  isEnglish: isEnglish,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 32),
                                child: Publication(
                                  isLightMode: isLightMode,
                                  isEnglish: isEnglish,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
