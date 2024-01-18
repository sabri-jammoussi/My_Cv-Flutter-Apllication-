import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miniprojet/translations/LocaleString.dart';
class GlobalParams {
  static List<Map<String, dynamic>> menus = [
    {"title": "Informations personnelles".tr, "icon": Icons.portrait, "color": Colors.teal, "route": "/info"},
    {"title": "etudes".tr, "icon": Icons.school_outlined, "color": Colors.teal, "route": "/etude"},
    {"title": "Expériences professionnelles".tr, "icon": Icons.work, "color": Colors.teal, "route": "/experience"},
    {"title": "Compétences & certifications".tr, "icon": Icons.badge_outlined, "color": Colors.teal, "route": "/competence"},
    {"title": "Portfolio".tr, "icon": Icons.contact_page, "color": Colors.teal, "route": "/portfolio"},
    {"title": "Langue".tr, "icon": Icons.language, "color": Colors.teal, "route": "/langue"},
  ];

  static List<Map<String,dynamic>>infos=[
    {"title":"Nom & Prénom :","subtitle":"Sabri Jammoussi"},
    {"title":"Date & lieu de naissance :","subtitle":"09/03/2001 Sfax"},
    {"title":"Adresse".tr,"subtitle":"Rue Kayed Mohamed km 5.5"},
    {"title":"Téléphone","subtitle":"23734344"},
    {"title":"E-mail","subtitle":"sabrijm123@gmail.com"},

  ];
  static List<Map<String, dynamic>> etudes = [
    {
      "title": "Baccalauréat 2020/2021:",
      "icon": Icon(Icons.school, color: Colors.teal),
      "subtitle": "Lycée Abou Kacem Chebbi",
    },
    {
      "title": "Licence 2021/2024:",
      "icon": Icon(Icons.school, color: Colors.teal),
      "subtitle": "Iset Sfax",
    },

  ];
  static List<Map<String,dynamic>>competeneces=[
    {"title": "Django","image": Image.asset("assets/images/django.png")},
    {"title": "PHP","image": Image.asset("assets/images/PHP-logo.svg.png")},
    {"title": "VueJs","image": Image.asset("assets/images/vuejs.png",width: 40,)},
    {"title": "NodeJS","image": Image.asset("assets/images/nodejs.png")},
    {"title": "React","image": Image.asset("assets/images/react.png")},
    {"title": "Flutter","image": Image.asset("assets/images/flutter.png" ,width: 40,height: 40,)},
    {"title": "Angular","image": Image.asset("assets/images/angular.png")},
    {"title": "NextJS","image": Image.asset("assets/images/nextjs.png",width: 40,)},
    {"title": "Java","image": Image.asset("assets/images/java.png",height: 40,)},
    {"title": "Python","image": Image.asset("assets/images/python.png")},
  ];
  static List<Map<String,dynamic>>experiences=[
    {"title":"Stage d'initiation","subtitle":"Date : 01/01/2022-01/02/2022 Société :ID Software Solution"},
    {"title":"Stage de Perfectionnement","subtitle":"Date : 01/07/2023-01/08/2023 Société :APBS Groupe"},
  ];
  static List<Map<String,dynamic>>langues=[
    {"title": "Français","image": Image.asset("assets/images/france.png")},
    {"title": "Englais","image": Image.asset("assets/images/englais.png")},
  ];

  }