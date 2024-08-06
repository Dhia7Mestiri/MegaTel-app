import 'package:flutter/material.dart';
import 'package:mega/cache/global.dart';
import 'package:mega/cache/language.dart';

class ValidationScreen extends StatelessWidget {
  const ValidationScreen({super.key});

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
              SingleChildScrollView(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: double.infinity,),
                      
                      Container(
                        child:  Image(image: AssetImage('images/success.png'),
                        height: h*0.1256,
                        width: h*0.1256,),
                      ),
                       SizedBox(height: h*0.0118),
                       Text(
                        "${lang['validation_text1']}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 0.635*f,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: CacheData.getData(key: 'color-white-black'),
                        ),
                      ),
                       SizedBox(height: 0.02*h),
                       Text(
                        "${lang['validation_text2']}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 0.414*f,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                          
                          color: Color.fromRGBO(134,131,131,1.000),
                        ),
                      ),
                      
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 0.0608*w),
                        child: Column(
                          children: [
                           
                            
                             SizedBox(height: h*0.02),
                            SizedBox(
                              width: w*0.7,
                              height: w*0.165,
                              child: ElevatedButton(
                                onPressed: () {},
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
                                child: Text(
                                  "${lang['validation_text3']}",
                                  style: TextStyle(
                                    fontSize: 0.522*f,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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


  