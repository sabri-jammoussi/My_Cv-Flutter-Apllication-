import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/global.params.dart';
class ExperiencePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expériences professionnelles'.tr),
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
            Card(
                color: Colors.black12,
                elevation: 3, // You can adjust the elevation as needed
                margin:
                EdgeInsets.all(8), // You can adjust the margin as needed
                child: ListTile(
                  title: Text(
                    'stageI'.tr,
                    style: TextStyle(fontSize: 22),
                  ),
                  subtitle: Text(
                    'dateid'.tr,
                    style: TextStyle(fontSize: 22),

                  ),
                ),
              ),
            Card(
              color: Colors.black12,
              elevation: 3, // You can adjust the elevation as needed
              margin:
              EdgeInsets.all(8), // You can adjust the margin as needed
              child: ListTile(
                title: Text(
                  'stageP'.tr,
                  style: TextStyle(fontSize: 22),
                ),
                subtitle: Text(
                  'dateAp'.tr,
                  style: TextStyle(fontSize: 22),

                ),
              ),
            ),
            Divider(height: 4, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
