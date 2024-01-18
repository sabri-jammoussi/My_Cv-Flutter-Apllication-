import 'package:flutter/material.dart';
import 'package:miniprojet/pages/home.page.dart';

class Splash extends StatefulWidget {

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _NavigatetoHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.teal, Colors.grey],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                 'assets/images/cv.png',
                width: 100,
                height: 100,
              ),
              SizedBox(height: 16.0),
              Text(
                "Cv Application",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20.0),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _NavigatetoHome() async{
    await Future.delayed(Duration(milliseconds: 3500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
  }
}
