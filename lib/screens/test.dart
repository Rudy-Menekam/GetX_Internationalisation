import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:getx_internationalisation/languages/translation_utils.dart';

class Test extends StatelessWidget {
  const Test({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: TranslationUtils('Appbar2')),
      body: Container(
        color: Colors.white,
        child: Center(
          child: TranslationUtils("Test"),
        ),
      ),
    );
  }
}
