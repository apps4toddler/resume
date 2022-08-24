import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Skills extends StatelessWidget {
  final bool isLightMode;
  final bool isEnglish;
  static final List<String> icons = [
    "vscode",
    "intelij",
    "bitbucket",
    "github",
    "kubernetes",
    "docker",
    "aws",
    "azure",
    "gcp",
    "salesforce",
    "sap",
    "c",
    "cpp",
    "csharp",
    "haskell",
    "go",
    "java",
    "bootstrap",
    "electron",
    "vue",
    "js",
    "ts",
    "dart",
    "kotlin",
    "python",
    "php",
    "ps",
    "ruby",
    "scala",
    "swift",
    "html",
    "css",
    "sass",
    "angular",
    "react",
    "flutter",
    "unity",
    "unreal",
    "blender",
    "photoshop",
    "illustrator",
    "aftereffect",
    "premier",
    "mysql",
    "postgres",
    "firebase",
    "mongo",
    "graphql",
    "nodejs",
    "laravel",
    "spring",
    "three",
    "powerbi",
    "tableau",
    "arduino",
    "raspberry",
    "android",
    "win",
    "mac",
    "linux",
    "excel",
    "word",
    "powerpoint",
    "canva",
    "zeplin",
    "wordpress",
    "eth",
    "bitcoin",
    "stripe",
    "solidity",
    "opensea",
    "mapbox",
    "kafka",
    "auth0",
    "elastic",
    "analytics",
  ];

  const Skills({
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
          Text("Technologies and skills",
              style: Theme.of(context).textTheme.headline6),
          Wrap(
            children: [
              for (var icon in icons)
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Tooltip(
                    message: icon,
                    child: SvgPicture.asset(
                      "assets/icons/icon-skill-$icon.svg",
                      semanticsLabel: icon,
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
