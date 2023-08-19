import 'dart:io';

import 'package:dart_exem/tack_1/tack_2/en.dart';
import 'package:dart_exem/tack_1/tack_2/ru.dart';
import 'package:dart_exem/tack_1/tack_2/uz.dart';

class Servis {
  const Servis();
  void servis() {
    stdout.write('''
   <------------>
   | 1.Uz       |
   <------------>
   |2.Ru        |
   <------------>
   |3.En        |
   <------------>

''');
    String menyu = stdin.readLineSync() ?? '';
    switch (menyu) {
      case "1":
        UzbekTili().uzbekTili();
        stdout.writeln('Davom ettirasizmi ha/yoq');
        String tanlov = stdin.readLineSync() ?? '';
        if (tanlov == "ha") servis();
        break;

      case "2":
        RuLangvich().ruLangvich();
        stdout.writeln('Davom ettirasizmi ha/yoq');
        String tanlov = stdin.readLineSync() ?? '';
        if (tanlov == "ha") servis();
        break;

      case "3":
        EnLanguage().engLanguage();
        stdout.writeln('Davom ettirasizmi ha/yoq');
        String tanlov = stdin.readLineSync() ?? '';
        if (tanlov == "ha") servis();
        break;
    }
  }
}
