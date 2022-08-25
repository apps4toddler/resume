import 'package:flutter/material.dart';

bool isLarge(BuildContext context) {
  return MediaQuery.of(context).size.width > 800;
}

bool isMiddle(BuildContext context) {
  return MediaQuery.of(context).size.width > 600;
}

bool isSmall(BuildContext context) {
  return MediaQuery.of(context).size.width <= 600;
}

bool isPrjWidth(BuildContext context) {
  return MediaQuery.of(context).size.width <= 1000;
}
