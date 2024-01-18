import 'package:flutter/material.dart';
import 'package:miniprojet/bottomnavigation/bottomnavigation.page.dart';
import 'package:miniprojet/pages/Exp%C3%A9rience.page.dart';
import 'package:miniprojet/pages/competence.page.dart';
import 'package:miniprojet/pages/etude.page.dart';
import 'package:get/get.dart';
import 'package:miniprojet/pages/home.page.dart';
import 'package:miniprojet/pages/informationperso.page.dart';
import 'package:miniprojet/pages/langue.page.dart';
import 'package:miniprojet/pages/portfolio.page.dart';
import 'package:miniprojet/splashScreen/splashScreen.dart';
import 'package:miniprojet/translations/LocaleString.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List locale = [
    {'name': 'FRANCE', 'locale': Locale('en','FR')},
    {'name': 'ENGLISH', 'locale': Locale('en','US')},
    {'name': 'اللغة العربية', 'locale': Locale('en','AR')},
  ];
  final routes = {
    '/main': (context) => MyApp(),
    '/home': (context) => HomePage(),
    '/info': (context) => InfoPage(),
    '/etude': (context) => EtudePage(),
    '/experience': (context) => ExperiencePage(),
    '/competence': (context) => CompetencePage(),
    '/portfolio': (context) => PortfolioPage(),
    '/langue': (context) => LanguePage(),
  };


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocalString(),
      locale: Locale('en', 'FR'),
      fallbackLocale: Locale('en', 'FR'),
      routes: routes,
      debugShowCheckedModeBanner: false,
      home: Splash(),




    );
  }
}
