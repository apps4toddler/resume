import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                  MediaQuery.of(context).size.width > 600
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: MediaQuery.of(context).size.width > 600
                                  ? const EdgeInsets.only(right: 16)
                                  : const EdgeInsets.all(0),
                              child: Image.asset(
                                "assets/images/profile.png",
                              ),
                            ),
                            MediaQuery.of(context).size.width > 600
                                ? Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SelectableText.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "<Hello World!/>",
                                                style: TextStyle(
                                                    color: Colors.green),
                                              ),
                                              TextSpan(
                                                text: "\n\n",
                                              ),
                                              TextSpan(
                                                text: "My name is ",
                                              ),
                                              TextSpan(
                                                text: "Takuya Sato",
                                                style: TextStyle(
                                                  color: Colors.green,
                                                ),
                                              ),
                                              TextSpan(
                                                text: " and I'm ",
                                              ),
                                              TextSpan(
                                                text:
                                                    "world class digital transformation partner",
                                                style: TextStyle(
                                                  color: Colors.green,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    "  for business owners solving social challenge.",
                                              ),
                                              TextSpan(text: "\n\n"),
                                              TextSpan(
                                                text:
                                                    "I definity believe that the future will be a wonderful world with digital innovation.",
                                              ),
                                              TextSpan(text: "\n\n"),
                                              TextSpan(
                                                text:
                                                    "My mission is technology innovation for this earth, so I'm going to provide leadership in emerging technology all over the world.",
                                              ),
                                              TextSpan(text: "\n\n"),
                                              TextSpan(
                                                text:
                                                    "And now I try not to dwell on what I've already achieved, therefore I'm constantly learning something new in order to further develop in the closen path.",
                                              ),
                                              TextSpan(text: "\n\n"),
                                              TextSpan(
                                                text:
                                                    "At the moment I'm interested in:",
                                              ),
                                              TextSpan(text: "\n"),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Tooltip(
                                              message: "flutter",
                                              child: SvgPicture.asset(
                                                'assets/icons/icon-flutter.svg',
                                                semanticsLabel: 'flutter',
                                                width: 24,
                                                height: 24,
                                              ),
                                            ),
                                            const SizedBox(width: 16),
                                            Tooltip(
                                              message: "dart",
                                              child: SvgPicture.asset(
                                                'assets/icons/icon-dart.svg',
                                                semanticsLabel: 'dart',
                                                width: 24,
                                                height: 24,
                                              ),
                                            ),
                                            const SizedBox(width: 16),
                                            Tooltip(
                                              message: "kotlin",
                                              child: SvgPicture.asset(
                                                'assets/icons/icon-kotlin.svg',
                                                semanticsLabel: 'kotlin',
                                                width: 24,
                                                height: 24,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                : Container(),
                          ],
                        )
                      : Image.asset(
                          "assets/images/profile.png",
                        ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 264,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Contacts",
                                  style: Theme.of(context).textTheme.headline6),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                  right: 0,
                                  bottom: 8,
                                  left: 0,
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/icon-mail.svg',
                                      semanticsLabel: 'mail',
                                      width: 24,
                                      height: 24,
                                      color: isLightMode
                                          ? Colors.blue
                                          : Colors.white,
                                    ),
                                    const SizedBox(width: 16),
                                    const Text("business@satotakuya.jp"),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                  right: 0,
                                  bottom: 8,
                                  left: 0,
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/icon-phone.svg',
                                      semanticsLabel: 'phone',
                                      width: 24,
                                      height: 24,
                                      color: isLightMode
                                          ? Colors.black54
                                          : Colors.white,
                                    ),
                                    const SizedBox(width: 16),
                                    const Text("(+81)-90-4448-7444"),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                  right: 0,
                                  bottom: 8,
                                  left: 0,
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/icon-line.svg',
                                      semanticsLabel: 'line',
                                      width: 24,
                                      height: 24,
                                      color: isLightMode
                                          ? const Color(0xff06C755)
                                          : Colors.white,
                                    ),
                                    const SizedBox(width: 16),
                                    const Text("satotaku1983"),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                  right: 0,
                                  bottom: 8,
                                  left: 0,
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/icon-wakatime.svg',
                                      semanticsLabel: 'wakatime',
                                      width: 24,
                                      height: 24,
                                      color: isLightMode
                                          ? Colors.black
                                          : Colors.white,
                                    ),
                                    const SizedBox(width: 16),
                                    SvgPicture.asset(
                                      'assets/icons/icon-github.svg',
                                      semanticsLabel: 'github',
                                      width: 24,
                                      height: 24,
                                      color: isLightMode
                                          ? Colors.black
                                          : Colors.white,
                                    ),
                                    const SizedBox(width: 16),
                                    SvgPicture.asset(
                                      'assets/icons/icon-linkedin.svg',
                                      semanticsLabel: 'linkedin',
                                      width: 24,
                                      height: 24,
                                      color: isLightMode
                                          ? const Color(0xff0A66C2)
                                          : Colors.white,
                                    ),
                                    const SizedBox(width: 16),
                                    SvgPicture.asset(
                                      'assets/icons/icon-twitter.svg',
                                      semanticsLabel: 'twitter',
                                      width: 24,
                                      height: 24,
                                      color: isLightMode
                                          ? const Color(0xff1DA1F2)
                                          : Colors.white,
                                    ),
                                    const SizedBox(width: 16),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Technologies and skills",
                                    style:
                                        Theme.of(context).textTheme.headline6),
                                Wrap(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-vscode.svg',
                                        semanticsLabel: 'vscode',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-intelij.svg',
                                        semanticsLabel: 'intelij',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-bitbucket.svg',
                                        semanticsLabel: 'bitbucket',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-github.svg',
                                        semanticsLabel: 'github',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-kubernetes.svg',
                                        semanticsLabel: 'kubernetes',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-docker.svg',
                                        semanticsLabel: 'docker',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-aws.svg',
                                        semanticsLabel: 'aws',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-azure.svg',
                                        semanticsLabel: 'azure',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-gcp.svg',
                                        semanticsLabel: 'gcp',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-salesforce.svg',
                                        semanticsLabel: 'salesforce',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-sap.svg',
                                        semanticsLabel: 'sap',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-c.svg',
                                        semanticsLabel: 'C',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-cpp.svg',
                                        semanticsLabel: 'Cpp',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-csharp.svg',
                                        semanticsLabel: 'Csharp',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-haskell.svg',
                                        semanticsLabel: 'Go',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-go.svg',
                                        semanticsLabel: 'Go',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-java.svg',
                                        semanticsLabel: 'Java',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-bootstrap.svg',
                                        semanticsLabel: 'bootstrap',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-vue.svg',
                                        semanticsLabel: 'vue',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-js.svg',
                                        semanticsLabel: 'JavaScript',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-ts.svg',
                                        semanticsLabel: 'TypeScript',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-dart.svg',
                                        semanticsLabel: 'Dart',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-kotlin.svg',
                                        semanticsLabel: 'Kotlin',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-python.svg',
                                        semanticsLabel: 'Python',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-php.svg',
                                        semanticsLabel: 'php',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-ps.svg',
                                        semanticsLabel: 'Adobe Post Script',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-ruby.svg',
                                        semanticsLabel: 'Ruby',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-scala.svg',
                                        semanticsLabel: 'Scala',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-swift.svg',
                                        semanticsLabel: 'Swift',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-html.svg',
                                        semanticsLabel: 'Html',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-css.svg',
                                        semanticsLabel: 'css',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-sass.svg',
                                        semanticsLabel: 'sass',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-cordova.svg',
                                        semanticsLabel: 'cordova',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-angular.svg',
                                        semanticsLabel: 'angular',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-react.svg',
                                        semanticsLabel: 'react',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-flutter.svg',
                                        semanticsLabel: 'flutter',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-unity.svg',
                                        semanticsLabel: 'unity',
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-unreal.svg',
                                        semanticsLabel: 'unreal',
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-blender.svg',
                                        semanticsLabel: 'blender',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-photoshop.svg',
                                        semanticsLabel: 'photoshop',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-illustrator.svg',
                                        semanticsLabel: 'illustrator',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-aftereffect.svg',
                                        semanticsLabel: 'aftereffect',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-premier.svg',
                                        semanticsLabel: 'premier',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-mysql.svg',
                                        semanticsLabel: 'myql',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-postgres.svg',
                                        semanticsLabel: 'postgres',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-firebase.svg',
                                        semanticsLabel: 'firebase',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-mongo.svg',
                                        semanticsLabel: 'mongo',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-graphql.svg',
                                        semanticsLabel: 'graphql',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-nodejs.svg',
                                        semanticsLabel: 'nodejs',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-laravel.svg',
                                        semanticsLabel: 'laravel',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-spring.svg',
                                        semanticsLabel: 'spring',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-three.svg',
                                        semanticsLabel: 'three',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-powerbi.svg',
                                        semanticsLabel: 'powerbi',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-tableau.svg',
                                        semanticsLabel: 'tableau',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-arduino.svg',
                                        semanticsLabel: 'arduino',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-raspberry.svg',
                                        semanticsLabel: 'raspberry',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-android.svg',
                                        semanticsLabel: 'android',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-win.svg',
                                        semanticsLabel: 'win',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-mac.svg',
                                        semanticsLabel: 'mac',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-linux.svg',
                                        semanticsLabel: 'linux',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-excel.svg',
                                        semanticsLabel: 'excel',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-word.svg',
                                        semanticsLabel: 'word',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-powerpoint.svg',
                                        semanticsLabel: 'poweroint',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-canva.svg',
                                        semanticsLabel: 'canva',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-zeplin.svg',
                                        semanticsLabel: 'zeplin',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-wordpress.svg',
                                        semanticsLabel: 'wordpress',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-eth.svg',
                                        semanticsLabel: 'eth',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-bitcoin.svg',
                                        semanticsLabel: 'bitcoin',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-solidity.svg',
                                        semanticsLabel: 'solidity',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-opensea.svg',
                                        semanticsLabel: 'opensea',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-mapbox.svg',
                                        semanticsLabel: 'mapbox',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-kafka.svg',
                                        semanticsLabel: 'kafka',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-auth0.svg',
                                        semanticsLabel: 'auth0',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-elastic.svg',
                                        semanticsLabel: 'elastic',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                        'assets/icons/icon-skill-analytics.svg',
                                        semanticsLabel: 'analytics',
                                        width: 40,
                                        height: 40,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
