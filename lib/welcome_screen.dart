
import 'package:flutter/widgets.dart';
import 'package:mega/cache/global.dart';
import 'package:flutter/material.dart';
import 'package:mega/login.dart';
import 'package:mega/sign_up.dart';
import 'package:mega/cache/language.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

 
  @override
  Widget build(BuildContext context) {
final w=MediaQuery.of(context).size.width*0.8;
final h=MediaQuery.of(context).size.height;
final f=w*0.11;



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
              Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      
                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: SizedBox(
                        
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 0.094850787*h,),
                    
                    
                                Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Image(image: AssetImage('images/im1.png'),
                                   height: 0.5*h,
                                      width: 0.4565*h,),
                                               ],
                               ),
                               
                                Text("${lang['welcome_text1']}",
                               textAlign: TextAlign.center,
                               style: TextStyle(
                              fontSize: 0.8287*f,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(84,157,198,1)),
                               ),
                    
                                 SizedBox(
                    height: 0.0226*h,
                                ),
                    
                                 Text("${lang['welcome_text2']}",
                               textAlign: TextAlign.center,
                               style: TextStyle(
                              fontSize: 0.34*f,
                              fontFamily: 'Poppins',
                              color: CacheData.getData(key: 'color-white-black'),),
                               ),
                                SizedBox(height: 0.0474*h,),
                                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                                SizedBox(
                                        width: 0.1778*h,
                                        height: 0.0652*h,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const LoginScreen()),
                                            );
                                          },
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all<Color>(
                                              const Color.fromRGBO(246, 96, 34, 1),
                                            ),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                          child:  Text(
                                           "${lang['welcome_text3']}",
                                            style: TextStyle(
                                              fontSize: double.parse("${lang_size['welcome_text3']}")*f,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                       SizedBox(width: 0.0118*h,),
                    
                                      SizedBox(
                                        width: 0.1778*h,
                                        height: 0.0652*h,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const SignUpScreen()),
                                            );
                                          },
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all<Color>(
                                              CacheData.getData(key: 'color-black-white'),
                                            ),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                          child:  Text(
                                            "${lang['welcome_text4']}",
                                            style: TextStyle(
                                              fontSize: double.parse("${lang_size['welcome_text3']}")*f,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromRGBO(246, 96, 34, 1),
                                              
                                            ),
                                          ),
                                        ),
                                      ),
                    ],
                                ),
                    
                                SizedBox(height: 0.0357*h,),
                    
                             ],
                           ),
                            
                           
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


