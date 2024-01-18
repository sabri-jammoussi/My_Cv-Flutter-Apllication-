import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:miniprojet/config/global.params.dart';

class CompetencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compétences & certifications'.tr),
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
            ...(GlobalParams.competeneces as List).map((item) {
              return Card(
                color: Colors.black12,
                elevation: 3, // You can adjust the elevation as needed
                margin:
                    EdgeInsets.all(8), // You can adjust the margin as needed
                child: ListTile(
                  title: Text(
                    '${item['title']}',
                    style: TextStyle(fontSize: 22),
                  ),
                  leading: CircleAvatar(
                    radius: 28, // Adjust the radius as needed
                    backgroundColor: Colors.teal, // Set the background color if desired
                    child: item['image'], // Your image or icon
                  ),

                ),
              );
            }),
            Divider(height: 4, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
