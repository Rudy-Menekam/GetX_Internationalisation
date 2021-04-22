import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_internationalisation/languages/languages_translations.dart';
import 'package:getx_internationalisation/screens/home.dart';
import 'package:getx_internationalisation/screens/test.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LanguagesTranslations(),
      locale: Get.deviceLocale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.indigo),
      ),
      home: Home(),
      routes: {
        'test': (context) => Test(),
      },
    );
  }
}