import 'package:get/get.dart';

class  LanguagesTranslations extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "en_US": {
      "Title": "Easy language translation",
      "Sub_title": "This text will automatically be translated into the appropriate language",
      "Button1": "Change language",
      "Button2": "Go to test",
      "Appbar1": "Cheetah Coding",
      "Appbar2": "Just testing",
      "Test": "This is just a useless screen for testing",
  },

    "fr_FR": {
      "Title": "Traduction de langue facile",
      "Sub_title": "Ce texte sera automatiquement traduit dans la langue appropriée",
      "Button1": "Changer de langue",
      "Button2": "Aller au test",
      "Appbar1": "Codage guépard",
      "Appbar2": "Juste des tests",
      "Test": "Ceci est juste un écran inutile pour tester",
    }
};

}