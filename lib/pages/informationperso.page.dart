import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miniprojet/config/global.params.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informations personnelles'.tr),
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
            Container(
              padding: EdgeInsets.all(20),
              child: Image(
                image: AssetImage('assets/images/linkdin.png'),
                height: 250,
              ),
            ),
           Column(
                children: [
              ListTile(
              title: Text(
                "nom".tr,
                style: TextStyle(fontSize: 22),
              ),
                subtitle: Text('Sabri Jammoussi'.tr,style: TextStyle(fontSize: 20),),
              ),
                ],
              ),

            Column(
              children: [
                ListTile(
                  title: Text(
                    "Date".tr,
                    style: TextStyle(fontSize: 22),
                  ),
                  subtitle: Text('sfax'.tr,style: TextStyle(fontSize: 20),),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  title: Text(
                    "Adresse".tr,
                    style: TextStyle(fontSize: 22),
                  ),
                  subtitle: Text('Rue'.tr,style: TextStyle(fontSize: 20),),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  title: Text(
                    "tel".tr,
                    style: TextStyle(fontSize: 22),
                  ),
                  subtitle: Text('23734344'.tr,style: TextStyle(fontSize: 20),),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  title: Text(
                    "email".tr,
                    style: TextStyle(fontSize: 22),
                  ),
                  subtitle: Text('sabrijm123@gmail.com'.tr,style: TextStyle(fontSize: 20),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
