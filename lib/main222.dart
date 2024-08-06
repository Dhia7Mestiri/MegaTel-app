/*
import 'package:flutter/material.dart';
import 'package:mega/splash_screen.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    const MyApp(),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarDividerColor: Colors.white,
        statusBarIconBrightness: Brightness.dark));
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'MegaTel',
      home: SplashScreen(),

    );
  }
}
*/





/*
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Fix the constructor

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MegaTel',
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: null, // Add child content here
        ),
      ),
    );
  }
}


*/















/*









import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Fix the constructor

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MegaTel',
      home: Scaffold(
        
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                ),






                Container(
                  child: Text('hello'),
                ),









                
              ],
            ),
          ),// Add child content here
        ),
        
      ),
    );
  }
}



































       floatingActionButton:
        Container(
          width: 160,
          height: 60,
          decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.red,),
          child: FloatingActionButton(
            onPressed: () {}, // Placeholder onPressed function
            tooltip: 'Increment',
            backgroundColor: Color.fromRGBO(246, 96, 34, 1),
             // Change background color if needed
            child: Text('Login',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.white),),
            elevation: 0, // Remove elevation to make the button flat
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20), // Adjust border radius to make it circular
            ),
          ),
        ),
      ),
    );
  }
}










*/