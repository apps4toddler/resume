import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resume/introduction.dart';
import './skills.dart';
import './contacts.dart';

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
                      children: [
                        Contacts(
                          isLightMode: isLightMode,
                          isEnglish: isEnglish,
                        ),
                        Skills(
                          isLightMode: isLightMode,
                          isEnglish: isEnglish,
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
