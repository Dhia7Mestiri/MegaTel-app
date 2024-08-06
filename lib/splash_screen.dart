import 'package:mega/cache/global.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mega/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState(); 
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>  const WelcomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {


final h=MediaQuery.of(context).size.height;


    return  Scaffold(
      backgroundColor:  CacheData.getData(key: 'color-black-white'),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('images/logo.png'), 
                  height: 0.2727*h,
                  width: 0.2727*h,
                ),
              ],
            ),
            
            const SizedBox(
              height: 255.0,
            ),
           
            Container(
              
              child:  Image(
                image: AssetImage('images/mega.png'),
                height: 0.057*h,
                  width: 0.134*h,
                ),
            ),
        
        
          ],
        ),
      ),
    );
  }
}
