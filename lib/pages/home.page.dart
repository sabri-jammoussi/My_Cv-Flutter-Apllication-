import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:miniprojet/Maps/Maps.page.dart';
import 'package:miniprojet/bottomnavigation/bottomnavigation.page.dart';
import 'package:url_launcher/url_launcher.dart'; // Import the url_launcher package
import 'package:url_launcher/url_launcher_string.dart';
import '../config/global.params.dart';
import '../menu/drawer.widget.dart';

import '../translations/LocaleString.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double CoverHeight = 280;

  final double profileHeight = 200;

  final List locale = [
    {'name': 'FRANCE', 'locale': Locale('en', 'FR')},
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
    {'name': 'اللغة العربية', 'locale': Locale('en', 'AR')},
  ];

  updateLanguage(Locale locale) {
    Get.updateLocale(locale);
    Get.back();
  }

  buildLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (builder) {
        return AlertDialog(
          title: Text('Choisissez votre langue'.tr),
          content: Container(
            width: double.maxFinite,
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Text(locale[index]['name']),
                    onTap: () {
                      print(locale[index]['name']);
                      updateLanguage(locale[index]['locale']);
                      Navigator.pop(context);
                    },
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.blue,
                );
              },
              itemCount: locale.length,
            ),
          ),
        );
      },
    );
  }

// for changing the the daarkmode
  toggleDarkMode() {
    if (Get.isDarkMode) {
      Get.changeTheme(ThemeData.light());
    } else {
      Get.changeTheme(ThemeData.dark());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          backgroundColor: Colors.teal,
          overlayColor: Colors.black,
          overlayOpacity: 0.4,
          spacing: 2,
          spaceBetweenChildren: 2,
          //closeManually: true,
          //openCloseDial: isDialOpen,
          children: [
            SpeedDialChild(
              child: Icon(FontAwesomeIcons.phone),
              onTap: () async {
                launchUrlString("tel: +21693923410");
              },
            ),
            SpeedDialChild(
              child: Icon(FontAwesomeIcons.solidEnvelope),
              onTap: () async {
                launchUrlString("mailto:sabrijm123@gmail.com");
                /*  const url = 'https://www.instagram.com/sabri_jammoussi/?hl=fr'; // Remplacez par l'URL de votre choix

                    await launch(  url,
                      forceSafariVC: false,
                      forceWebView: false, // Use a WebView to open the URL
                      universalLinksOnly: true,);

                  //showToast('Selected instagram...');*/
              },
            ),
            SpeedDialChild(
              child: Icon(FontAwesomeIcons.linkedin),
              onTap: () async {
                const url =
                    'https://www.linkedin.com/in/jammoussi-sabri-488005286/';
                await launch(
                  url,
                  forceSafariVC: false,
                  forceWebView: false, // Use a WebView to open the URL
                  universalLinksOnly: true,
                );
              },
            ),
            SpeedDialChild(
              child: Icon(FontAwesomeIcons.github),
              onTap: () async {
                const url =
                    'https://github.com/sabri-jammoussi'; // Remplacez par l'URL de votre choix
                //if ( await canLaunch(url)) {
                await launch(
                  url,
                  forceSafariVC: false,
                  forceWebView: false, // Use a WebView to open the URL
                  universalLinksOnly: true,
                );
                // } else {
                // throw 'Impossible d\'ouvrir l\'URL : $url'; // Commentaire : Gestion des erreurs
                //}
                //showToast('Selected linkedin...');
              },
            ),
          ]),
      drawer: MyDrawer(),

      appBar: AppBar(
        title: Text('MonCV'.tr),
        backgroundColor: Colors.teal,
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: ListTile(
                    leading: Icon(Icons.map),
                    title: Text('maps'.tr),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MapScreen(), // Replace MapsScreen with the actual screen you want to navigate to
                        ),
                      );
                    },
                  ),
                ),
                PopupMenuItem(
                  child: ListTile(
                    leading: Icon(Get.isDarkMode
                        ? Icons.brightness_7
                        : Icons.brightness_3),
                    title: Text('darkmode'.tr),
                    onTap: () {
                      toggleDarkMode();
                      Navigator.pop(context);
                    },
                  ),
                ),
                PopupMenuItem(
                  child: ListTile(
                    leading: Icon(Icons.language),
                    title: Text('Choisissez votre langue'.tr),
                    onTap: () {
                      buildLanguageDialog(context);
                    },
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            buildCoverImage(),
            // buildContent(),
            Column(
              children: [
                ListTile(
                  title: Text(
                    "Informations personnelles".tr,
                    style: TextStyle(fontSize: 22),
                  ),
                  leading: Icon(
                    Icons.portrait,
                    color: Colors.teal,
                  ),
                  trailing: Icon(Icons.arrow_drop_down, color: Colors.teal),
                  onTap: () async {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/info");
                  },
                ),
                ListTile(
                  title: Text(
                    "etudes".tr,
                    style: TextStyle(fontSize: 22),
                  ),
                  leading: Icon(
                    Icons.school_outlined,
                    color: Colors.teal,
                  ),
                  trailing: Icon(Icons.arrow_drop_down, color: Colors.teal),
                  onTap: () async {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/etude");
                  },
                ),
                ListTile(
                  title: Text(
                    "Expériences professionnelles".tr,
                    style: TextStyle(fontSize: 22),
                  ),
                  leading: Icon(
                    Icons.work,
                    color: Colors.teal,
                  ),
                  trailing: Icon(Icons.arrow_drop_down, color: Colors.teal),
                  onTap: () async {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/experience");
                  },
                ),
                ListTile(
                  title: Text(
                    "Compétences & certifications".tr,
                    style: TextStyle(fontSize: 22),
                  ),
                  leading: Icon(
                    Icons.badge_outlined,
                    color: Colors.teal,
                  ),
                  trailing: Icon(Icons.arrow_drop_down, color: Colors.teal),
                  onTap: () async {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/competence");
                  },
                ),
                ListTile(
                  title: Text(
                    "Portfolio".tr,
                    style: TextStyle(fontSize: 22),
                  ),
                  leading: Icon(
                    Icons.contact_page,
                    color: Colors.teal,
                  ),
                  trailing: Icon(Icons.arrow_drop_down, color: Colors.teal),
                  onTap: () async {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/portfolio");
                  },
                ),
                ListTile(
                  title: Text(
                    "Langue".tr,
                    style: TextStyle(fontSize: 22),
                  ),
                  leading: Icon(
                    Icons.language,
                    color: Colors.teal,
                  ),
                  trailing: Icon(Icons.arrow_drop_down, color: Colors.teal),
                  onTap: () async {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, "/langue");
                  },
                ),
              ],
            ),
          ],
        ),
      ),

//bottomNavigationBar: BottomNavigation(),
    );
  }

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1617040619263-41c5a9ca7521?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Zmx1dHRlcnxlbnwwfHwwfHx8MA%3D%3D',
              width: double.infinity,
              height: CoverHeight,
              fit: BoxFit.cover,
            ),
            CircleAvatar(
              radius: profileHeight / 2,
              backgroundColor: Colors.white12,
              backgroundImage: AssetImage("assets/images/linkdine.png"),
            ),
          ],
        ),
      );

// for the Small icons
/*  Widget buildContent() => Column(
    children: [
      const SizedBox(height: 8,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildSocialIcon(FontAwesomeIcons.facebook,Colors.blue, "https://www.facebook.com/sabri.jammoussi.9"),
          const SizedBox(width: 12),
          buildSocialIcon(FontAwesomeIcons.instagram,Colors.purple, "https://www.instagram.com/sabri_jammoussi/?hl=fr"),
          const SizedBox(width: 12),
          buildSocialIcon(FontAwesomeIcons.github,Colors.black, "https://github.com/sabri-jammoussi"),
          const SizedBox(width: 12),
          buildSocialIcon(FontAwesomeIcons.linkedin,Colors.blue, "https://www.linkedin.com/in/jammoussi-sabri-488005286/"),
          const SizedBox(width: 12),
        ],
      )
    ],
  );*/

//this methode is  to open the url in the google !!
/*  Widget buildSocialIcon(IconData icon,Color color, String url) => CircleAvatar(
    radius: 25,
    backgroundColor: color,
    child: Material(
      shape: CircleBorder(),
      clipBehavior: Clip.antiAlias,
      color: Colors.transparent,
      child: InkWell(
        onTap: () async {
          await launch(
            url,
            forceSafariVC: false,
            forceWebView: false,
            universalLinksOnly: true,
          );
        },
        child: Center(child: Icon(icon, size: 32,color: Colors.white)),
      ),
    ),
  );*/
}
