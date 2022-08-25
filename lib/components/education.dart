import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Education extends StatelessWidget {
  final bool isLightMode;
  final bool isEnglish;

  const Education({
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
          Text("Education".tr, style: Theme.of(context).textTheme.headline6),
          const SizedBox(height: 16),
          SelectableText(
            "National Institute of Technology, Tokyo College".tr,
            style: const TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SelectableText(
            "(1999-2003)",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          SelectableText(
            "Faculty:".tr,
            style: const TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          SelectableText("Mechanical Engineering".tr),
          const SizedBox(height: 16),
          SelectableText(
            "Specialty:".tr,
            style: const TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          SelectableText("Management of emerging technology".tr),
        ],
      ),
    );
  }
}
