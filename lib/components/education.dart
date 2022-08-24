import 'package:flutter/material.dart';

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
          Text("Education", style: Theme.of(context).textTheme.headline6),
          const SizedBox(height: 16),
          const Text(
            "National Institute of Technology, Tokyo College",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "(1999-2003)",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "Faculty:",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text("Mechanical Engineering"),
          const SizedBox(height: 16),
          const Text(
            "Specialty:",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text("Management of emerging technology"),
        ],
      ),
    );
  }
}
