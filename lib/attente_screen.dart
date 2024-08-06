import 'package:flutter/material.dart';
import 'package:mega/cache/global.dart';
import 'package:mega/cache/language.dart';


class AttenteScreen extends StatelessWidget {
  const AttenteScreen({super.key});

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
                      
                      Container( 
                        child:  Image(image: AssetImage('images/send_clock.png'),
                        height: 0.3312*w,
                        width: 0.3312*w,),
                      ),
                       SizedBox(height: 0.0472*h),
                      Container(
                        margin:  EdgeInsets.fromLTRB(0.1155*w, 0, 0.1155*w, 0),
                        child:  Text(
                          "${lang['attente_text1']}",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 0.553*f,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: CacheData.getData(key: 'color-white-black')
                          ),
                        ),
                      ),
                       SizedBox(height: 0.0236*h),
                      Row(

                        children: [
                          Container(
                            margin:  EdgeInsets.fromLTRB(0.1155*w, 0, 0.1155*w, 0),
                            child:  Text(
                              "${lang['attente_text2']}",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 0.41436*f,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Poppins',
                                        
                                color: CacheData.getData(key: 'color-white-black')
                              ),
                            ),
                          ),
                        ],
                      ),
                      
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 0.06076*w),
                        child: Column(
                          children: [
                           
                            
                             SizedBox(height: 0.0354*h),
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
                                child:  Text(
                                  "${lang['attente_text3']}",
                                  style: TextStyle(
                                    fontSize: 0.553*f,
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


  