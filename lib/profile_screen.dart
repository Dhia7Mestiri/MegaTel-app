import 'package:flutter/material.dart';
import 'package:mega/cache/global.dart';
import 'package:mega/cache/language.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {

final w=MediaQuery.of(context).size.width*0.8;
final h=MediaQuery.of(context).size.height;
final f=w*0.11;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MegaTel',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Container(
        
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(CacheData.getData(key: 'background'),),
                 fit: BoxFit.cover)),
        child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.transparent,
              
              body: Stack(
                children: [
                  
                  SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Container(
                      
                      child: Column(
                        
                        children: [
                         
                          SafeArea(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             
                              children: [
                                
                                
                            
                               Container(
                                margin: EdgeInsets.only(left: 0.03038 *w),
                                 child: TextButton(
                                  
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Image(image: AssetImage( CacheData.getData(key: 'back-arrow'),),
                                          height: 0.074694*h,
                                          width: 0.08299*h,
                                          ),
                                        ),
                               ),
                                Text(
                                "${lang['profile_text1']}",
                                style: TextStyle(
                                  color: CacheData.getData(key: 'color-white-black'),
                                  fontSize: 0.553*f,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              
                              Container(
                                margin: EdgeInsets.fromLTRB(0.09115 *w, 0, 0, 0),
                                child: TextButton(
                                  onPressed: (){},
                                  child: Image(image: AssetImage(CacheData.getData(key: 'edit'),),
                                  width: 0.03913 *h,
                                  height: 0.03913 *h,
                                  ),
                                ),
                                padding: EdgeInsets.only(right: 0.03038 *w),
                              ),
                             
                              ],
                            ),
                          ),
                          ProfileImage(),
                          SizedBox(height: 0.00711 *h,),
                          Text('Dhia El Ayeb',
                          style: TextStyle(
                             color: CacheData.getData(key: 'color-white-black'),
                            fontSize:  0.60764 *f,
                            fontWeight: FontWeight.w500,
                          ),
                          ),
                          SizedBox(height: 0.02964 *h,),
                          InformationWidget("${lang['profile_text2']}",'isima'),SizedBox(height: 0.01423 *h,),
                          InformationWidget("${lang['profile_text3']}",'Dhia123@gmail.com'),SizedBox(height: 0.01423 *h,),
                          InformationWidget("${lang['profile_text4']}",'12345678'),SizedBox(height: 0.01423 *h,),
                          InformationWidget("${lang['profile_text5']}",'23/05/2005'),SizedBox(height: 0.01423 *h,),
                          InformationWidget("${lang['profile_text6']}",'Tunisia'),SizedBox(height: 0.01778 *h,),
                          
        
                         
        
        
        
          
        
        
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






class ProfileImage extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
  final w=MediaQuery.of(context).size.width*0.8;
final h=MediaQuery.of(context).size.height;
            return Container(
      width:  0.3737 *w,
      height:  0.3737 *w,
      decoration: BoxDecoration(
          boxShadow : [BoxShadow(
          color: Colors.black,
          offset: Offset(4,-3),
          spreadRadius: CacheData.getData(key: 'shadow-size'),
          blurRadius: 100
      )],
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
      width:  0.3737 *w,
      height:  0.3737 *w,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width:  0.3737 *w,
      height:  0.3737 *w,
        decoration: BoxDecoration(
          color : Color.fromRGBO(241, 244, 255, 1),
      borderRadius : BorderRadius.all(Radius.elliptical(123, 123)),
  )
      )
      ),Positioned(
         top: 11,
        left: 0.03239 *w,
        child: Container(
          
          child: Image(image: AssetImage('images/profile.png'),
        width: 0.09485 *h,
        height: 0.09485 *h,
        ),
        width: 0.30893 *w,
        height: 0.12056 *h,
        decoration: BoxDecoration(
          color : CacheData.getData(key: 'color-black-white'),
      borderRadius : BorderRadius.all(Radius.elliptical(101.68000030517578, 101.68000030517578)),
  ),
       
      )
      ),
        ]
      )
    )
      ),Positioned(
        top: 0.00474 *h,
        left: 0.24306 *w,
        child: Container(
        width: 0.12153 *w,
        height: 0.04505 *h,
        decoration: BoxDecoration(
          color : Color.fromRGBO(241, 244, 255, 1),
      borderRadius : BorderRadius.all(Radius.elliptical(40, 38)),
  )
      )
      ),Positioned(
        top: -0.00237 *h,
        left: 0.21268 *w,
        child: TextButton(
          onPressed: (){},
          child: Container(
                width: 0.05469 *w,
                height: 0.02582 *h,
                
                child: Stack(
          children: <Widget>[
            Positioned(
          top: 0,
          left: 0,
          child: Image(image: AssetImage('images/pen.png'),
          height:  0.02582 *h,
          width: 0.05469 *w,),
                ),
          ]
                )
              ),
        )
      ),
        ]
      )
    );
          }
        }
       

       



  class InformationWidget extends StatelessWidget {
  final String title;
  final String contenu;

  InformationWidget(this.title, this.contenu);

  @override
  Widget build(BuildContext context) {
    final w=MediaQuery.of(context).size.width*0.8;
final h=MediaQuery.of(context).size.height;
final f=w*0.11;
    return Container(
      width: 1.03907 *w,
      height: 0.24306 *w,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: TextStyle(
                 color: CacheData.getData(key: 'color-white-black'),
                fontFamily: 'Poppins',
                fontSize: 0.44192 *f,
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
                height: 0.00178 *h,
              ),
            ),
          ),
          Positioned(
            top: 0.03557 *h,
            left: 0,
            child: Container(
              width: 1.03907 *w,
              height: 0.13368 *w,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 1.03907 *w,
                      height: 0.13368 *w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color.fromRGBO(241, 244, 255, 1),
                        border: Border.all(
                          color: Color.fromRGBO(241, 244, 255, 1),
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0.01304 *h,
                    left:  0.05469 *w,
                    child: Text(
                      contenu,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(83, 76, 76, 1),
                        fontSize: 0.38668 *f,
                        letterSpacing: 0,
                        fontWeight: FontWeight.w500,
                        height: 0.00178 *h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}