import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDrawer extends StatefulWidget {
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  static List<Map<String, dynamic>> menus = [
    {"title": "Expériences professionnelles".tr, "icon": Icons.work, "color": Colors.teal, "route": "/experience"},
    {"title": "Compétences & certifications".tr, "icon": Icons.badge_outlined, "color": Colors.teal, "route": "/competence"},
    {"title": "Portfolio".tr, "icon": Icons.contact_page, "color": Colors.teal, "route": "/portfolio"},
    {"title": "Langue".tr, "icon": Icons.language, "color": Colors.teal, "route": "/langue"},
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Sabri Jammoussi'.tr),
            accountEmail: Text('sabrijm123@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/linkdine.png",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
              backgroundColor: Colors.white12,
            ),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.teal, Colors.white]),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg'))),
          ),
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
              )
            ],
          ),
          Column(
            children: [
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
              )
            ],
          ),
          Column(
            children: [
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
              )
            ],
          ),
          Column(
            children: [
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
              )
            ],
          ),
          Column(
            children: [
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
              )
            ],
          ),
          Column(
            children: [
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
