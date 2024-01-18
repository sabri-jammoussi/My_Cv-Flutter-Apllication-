import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/global.params.dart';
class LanguePage extends StatefulWidget {
  const LanguePage({super.key});

  @override
  State<LanguePage> createState() => _LanguePageState();
}

class _LanguePageState extends State<LanguePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Langue'.tr),
        backgroundColor: Colors.teal,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/home');
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: ListView(
            children: [
                 Card(
                  color: Colors.black12,
                  elevation: 3, // You can adjust the elevation as needed
                  margin:
                  EdgeInsets.all(8), // You can adjust the margin as needed
                   child: ListTile(
                     title: Text(
                       "fr".tr,
                       style: TextStyle(fontSize: 22),
                     ),
                     leading: CircleAvatar(
                       radius: 28, // Adjust the radius as needed
                       backgroundColor: Colors.teal, // Set the background color if desired
                       child: Image.asset("assets/images/france.png"), // Your image or icon
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
                    "En".tr,
                    style: TextStyle(fontSize: 22),
                  ),
                  leading: CircleAvatar(
                    radius: 28, // Adjust the radius as needed
                    backgroundColor: Colors.teal, // Set the background color if desired
                    child: Image.asset("assets/images/englais.png"), // Your image or icon
                  ),

                ),

              ),
              Divider(height: 4, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
