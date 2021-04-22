import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_internationalisation/languages/translation_utils.dart';

class Home extends StatelessWidget {
  final locales = [
    {
      'name': "English",
      'locale': Locale("en", "US"),
    },
    {
      'name': "French",
      'locale': Locale("fr", "FR"),
    },
  ];
  showlocaleDialog(BuildContext context){
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("Choose your language"),
          content: Container(
             width: Get.size.width/6,
             height: Get.size.height/8,
            child: ListView.separated(
              shrinkWrap: true,
                itemBuilder: (context, index) => InkWell(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(locales[index]["name"]),

                ),
                  onTap: () => updateLocales(locales[index]["locale"], context),
                 ),
                separatorBuilder: (context, index) => Divider(
                  color: Colors.blue,
                ),
                itemCount: 2,
            ),
          ),
        ),
    );
  }
  updateLocales(Locale locale, BuildContext context){
    Get.back();
    Get.updateLocale(locale);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: TranslationUtils('Appbar1')),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/logo.png',
                height: 200,
              ),
              SizedBox(height: 24),
              Text(
                'Title'.tr,
                style: TextStyle(fontSize: 36, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              Text(
                'Sub_title'.tr,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(height: 24),
              FlatButton(
                child: Text(
                  "Button1".tr,
                  style: TextStyle(fontSize: 18),
                ),
                color: Colors.indigo,
                textColor: Colors.white,
                onPressed: () => showlocaleDialog(context),
              ),
              SizedBox(height: 24),
              FlatButton(
                child: Text(
                  "Button2".tr,
                  style: TextStyle(fontSize: 18),
                ),
                color: Colors.indigo,
                textColor: Colors.white,
                onPressed: () => Navigator.pushNamed(context, 'test'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
