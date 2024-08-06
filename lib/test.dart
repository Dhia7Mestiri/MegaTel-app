import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mega/splash_screen.dart';
import 'package:mega/attente_screen.dart';
import 'package:mega/contact_us_screen.dart';
import 'package:mega/forgot_password_screen.dart';
import 'package:mega/forgot_password_screen2.dart';
import 'package:mega/language_screen.dart';
import 'package:mega/login.dart';
import 'package:mega/sign_up.dart';
import 'package:mega/reset_password_screen.dart';
import 'package:mega/welcome_screen.dart';
import 'package:mega/verification_screen.dart';
import 'package:mega/validation.dart';
import 'package:mega/search_screen.dart';
import 'package:mega/settings_screen.dart';
import 'package:mega/menu_screen.dart';
import 'package:mega/profile_screen.dart';
import 'package:mega/my_agents_screen.dart';
import 'package:mega/edit_screen.dart';
import 'package:mega/notifications_screen.dart';
import 'package:mega/cache/global.dart';


class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  late Timer _timer;
  
  
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(milliseconds: 500), (Timer timer) {
      setState(() {});
      if (1== CacheData.getData(key: 'test')) {
          _timer.cancel();
          CacheData.setData(key: 'test', value: 0);
        }  
        });
  }
  

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MegaTel',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  CacheData.getData(key: 'background'),
                  fit: BoxFit.cover,
                ),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SizedBox(
                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: double.infinity),
                      SizedBox(height: 60,),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SplashScreen()),
                          );
                        },
                        child: Text(
                          'splash_screen',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.5,
                            color: CacheData.getData(key: 'color-white-black'),
                          ),
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const WelcomeScreen()),
                          );
                        },
                        child: Text(
                          'welcome_screen',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.5,
                            color: CacheData.getData(key: 'color-white-black'),
                          ),
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginScreen()),
                          );
                        },
                        child: Text(
                          'login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.5,
                            color: CacheData.getData(key: 'color-white-black'),
                          ),
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SignUpScreen()),
                          );
                        },
                        child: Text(
                          'sign_up',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.5,
                            color: CacheData.getData(key: 'color-white-black'),
                          ),
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ForgotPassword()),
                          );
                        },
                        child: Text(
                          'forgot_password_screen',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.5,
                            color: CacheData.getData(key: 'color-white-black'),
                          ),
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ForgotPasswordScreen2()),
                          );
                        },
                        child: Text(
                          'forgot_password_screen2',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.5,
                            color: CacheData.getData(key: 'color-white-black'),
                          ),
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const VerificationScreen()),
                          );
                        },
                        child: Text(
                          'verification_screen',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.5,
                            color: CacheData.getData(key: 'color-white-black'),
                          ),
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ValidationScreen()),
                          );
                        },
                        child: Text(
                          'validation',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.5,
                            color: CacheData.getData(key: 'color-white-black'),
                          ),
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ResetPasswordScreen()),
                          );
                        },
                        child: Text(
                          'reset_password_screen',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.5,
                            color: CacheData.getData(key: 'color-white-black'),
                          ),
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LanguageScreen()),
                          );
                        },
                        child: Text(
                          'language_screen',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.5,
                            color: CacheData.getData(key: 'color-white-black'),
                          ),
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ContactUsScreen()),
                          );
                        },
                        child: Text(
                          'contact_us_screen',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.5,
                            color: CacheData.getData(key: 'color-white-black'),
                          ),
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const AttenteScreen()),
                          );
                        },
                        child: Text(
                          'attente_screen',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.5,
                            color: CacheData.getData(key: 'color-white-black'),
                          ),
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SearchScreen()),
                          );
                        },
                        child: Text(
                          'search_screen',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.5,
                            color: CacheData.getData(key: 'color-white-black'),
                          ),
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SettingsScreen()),
                          );
                        },
                        child: Text(
                          'settings_screen',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.5,
                            color: CacheData.getData(key: 'color-white-black'),
                          ),
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const MenuScreen()),
                          );
                        },
                        child: Text(
                          'menu_screen',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.5,
                            color: CacheData.getData(key: 'color-white-black'),
                          ),
                        ),
                      ),



                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ProfileScreen()),
                          );
                        },
                        child: Text(
                          'profile_screen',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.5,
                            color: CacheData.getData(key: 'color-white-black'),
                          ),
                        ),
                      ),



                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const EditScreen()),
                          );
                        },
                        child: Text(
                          'edit_screen',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.5,
                            color: CacheData.getData(key: 'color-white-black'),
                          ),
                        ),
                      ),



                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const MyAgentsScreen()),
                          );
                        },
                        child: Text(
                          'my_agents_screen',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.5,
                            color: CacheData.getData(key: 'color-white-black'),
                          ),
                        ),
                      ),



                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const NotficationsScreen()),
                          );
                        },
                        child: Text(
                          'notifications_screen',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.5,
                            color: CacheData.getData(key: 'color-white-black'),
                          ),
                        ),
                      ),











                      SizedBox(height: 50,),





                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
