import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Publication extends StatelessWidget {
  final bool isLightMode;
  final bool isEnglish;

  const Publication({
    Key? key,
    required this.isLightMode,
    required this.isEnglish,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Publication and Awards".tr,
              style: Theme.of(context).textTheme.headline6),
          const SizedBox(height: 16),
          const SelectableText(
            "Future of Cities",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          SelectableText(
            "Forbes JAPAN [2022 publication]".tr,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),
          const SelectableText(
            "World Blockchain Summit Top 10 Project Leaders.",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          SelectableText(
            "World Blockchain Summit Singapore [2019 award]".tr,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
