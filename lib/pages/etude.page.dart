import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miniprojet/bottomnavigation/bottomnavigation.page.dart';

import '../config/global.params.dart';

class EtudePage extends StatelessWidget {
  const EtudePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('etudes'.tr),
        backgroundColor: Colors.teal,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/home');
          },
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
                children: [
                  ListTile(
                    title: Text(
                      "bac".tr,
                      style: TextStyle(fontSize: 22),
                    ),
                    leading: Icon(Icons.school, color: Colors.teal),

                    subtitle: Text("lycee".tr,style: TextStyle(fontSize: 20),),
                  ),
                  ListTile(
                    title: Text(
                      "licence".tr,
                      style: TextStyle(fontSize: 22),
                    ),
                    leading: Icon(Icons.school, color: Colors.teal),

                    subtitle: Text("fac".tr,style: TextStyle(fontSize: 20),),
                  ),
                ],

            ),
          ],
        ),
      ),
      //bottomNavigationBar: BottomNavigation(),

    );
  }
}
