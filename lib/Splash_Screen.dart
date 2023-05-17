import 'dart:async';
//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:GreenHouse/home_page.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer( Duration (seconds:5),()=>Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>home())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFDCEDC8),
            Color(0xFF9CCC65),]
        ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround ,
          children: [
            Column(
              children: [
                Image.asset("assets/images/transparent_background_logo.png",
                  height: 300.0,
                  width: 300.0,),
                Text
                  ("\nTecho is Your Green House Management Partner",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),),
              ],
            ),

            CircularProgressIndicator(
            ),
          ],

        ),
      ),
    );
  }
}
