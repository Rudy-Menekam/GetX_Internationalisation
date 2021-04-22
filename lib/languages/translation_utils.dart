
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslationUtils extends StatelessWidget {
  final String text;

  TranslationUtils(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(text.tr));
  }
}
