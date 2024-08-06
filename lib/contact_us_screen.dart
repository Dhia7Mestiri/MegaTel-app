
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:mega/cache/global.dart';
import 'package:mega/cache/language.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
final w=MediaQuery.of(context).size.width*0.8;
final h=MediaQuery.of(context).size.height;
final f=w*0.11;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MegaTel',
      theme: ThemeData(fontFamily: 'Poppins'),
      home:  Container(
        
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                            
                  
                          SafeArea(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                
                               Container(
                                margin: EdgeInsets.only(left: 0.03039*w),
                                 child: TextButton(
                                  
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Image(image: AssetImage(CacheData.getData(key: 'back-arrow'),),
                                          height: 0.1915*w,
                                          width: 0.2126*w,
                                          ),
                                        ),
                               ),
                              Text("${lang['contact_text1']}",
                              style:TextStyle(
                                fontSize: 0.553*f,
                                fontWeight: FontWeight.w200,
                                color: CacheData.getData(key: 'color-white-black'),
                              ),
                              ),
                              SizedBox(width: 0.319*w,),
                              ],
                            ),
                          ),
                      SizedBox(height: 0.02596*h),
                      Container(
                        padding: EdgeInsets.fromLTRB(0.06076*w, 0, 0.06076*w, 0),
                        child: Image(image: AssetImage("${CacheData.getData(key: 'support')}${lang['supp']}",),
                        height: 0.51953*w,
                        width: 1.115*w,
                        )),
                
                        
                        
                        
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 0.09115*w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${lang['contact_text2']}",
                                   style: TextStyle(
                                     fontSize: 0.442*f,
                                     fontWeight: FontWeight.w600,
                                     color: CacheData.getData(key: 'color-white-black'),
                                   ),),
                                   SizedBox(height:0.00948*h),
                
                        Container(margin: EdgeInsets.only(left:0.085*w),
                        child: Text('English',
                         style: TextStyle(
                           fontSize: 0.442*f,
                           fontWeight: FontWeight.w500,
                           color: CacheData.getData(key: 'color-white-black'),
                         ),)),
                        Container(
                          margin: EdgeInsets.only(left: 0.085*w),
                          width: 0.97223*w,
                          height: 0.1519*w,
                          padding: EdgeInsets.fromLTRB(0.04557*w, 0, 0.023*w, 0),
                          decoration: BoxDecoration(
                            color: CacheData.getData(key: 'color-black2-white2'),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                            color: const Color.fromRGBO(246, 96, 34, 1),
                            width: 2.0,
                          ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('+123456789',
                                  style: TextStyle(
                                    fontSize: 0.442*f,
                                    fontWeight: FontWeight.w500,
                                    color: CacheData.getData(key: 'color-white-black'),
                                  ),),
                              
                               TextButton(onPressed: (){
                                Clipboard.setData(ClipboardData(text: '+123456789'));
                               },
                                child: Text("${lang['contact_copy']}",
                                style: TextStyle(
                                  color: Color.fromRGBO(246, 96, 34, 1)
                                ),
                                )),
                            ],
                          ),
                        ),
                        SizedBox(height:0.0111*h),
                
                
                
                        Container(margin: EdgeInsets.only(left: 0.085*w),
                        child: Text('Français',
                        style: TextStyle(
                          fontSize: 0.443*f,
                          fontWeight: FontWeight.w500,
                          color: CacheData.getData(key: 'color-white-black'),
                        ),)),
                        Container(
                          margin: EdgeInsets.only(left: 0.085*w),
                          width: 0.97223*w,
                          height: 0.1519*w,
                          padding: EdgeInsets.fromLTRB(0.04557*w, 0, 0.023*w, 0),
                          decoration: BoxDecoration(
                            color: CacheData.getData(key: 'color-black2-white2'),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                            color: const Color.fromRGBO(246, 96, 34, 1),
                            width: 2.0,
                          ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('+123456789',
                                  style: TextStyle(
                                    fontSize: 0.442*f,
                                    fontWeight: FontWeight.w500,
                                    color: CacheData.getData(key: 'color-white-black'),
                                  ),),
                              
                               TextButton(onPressed: (){
                                Clipboard.setData(ClipboardData(text: '+123456789'));
                               },
                                child: Text("${lang['contact_copy']}",
                                style: TextStyle(
                                  color: Color.fromRGBO(246, 96, 34, 1)
                                ),
                                )),
                            ],
                          ),
                        ),
                        SizedBox(height:0.0111*h),
                
                
                
                        Container(margin: EdgeInsets.only(left: 0.085*w),
                        child: Text('Deutsch',
                        style: TextStyle(
                          fontSize: 0.442*f,
                          fontWeight: FontWeight.w500,
                          color: CacheData.getData(key: 'color-white-black'),
                        ),)),
                        Container(
                          margin: EdgeInsets.only(left: 0.085*w),
                          width: 0.97223*w,
                          height: 0.1519*w,
                          padding: EdgeInsets.fromLTRB(0.04557*w, 0, 0.023*w, 0),
                          decoration: BoxDecoration(
                            color: CacheData.getData(key: 'color-black2-white2'),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                            color: const Color.fromRGBO(246, 96, 34, 1),
                            width: 2.0,
                          ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('+123456789',
                                  style: TextStyle(
                                    fontSize: 0.442*f,
                                    fontWeight: FontWeight.w500,
                                    color: CacheData.getData(key: 'color-white-black'),
                                  ),),
                              
                               TextButton(onPressed: (){
                                Clipboard.setData(ClipboardData(text: '+123456789'));
                               },
                                child: Text("${lang['contact_copy']}",
                                style: TextStyle(
                                  color: Color.fromRGBO(246, 96, 34, 1)
                                ),
                                )),
                            ],
                          ),
                        ),
                        SizedBox(height:0.0111*h),
                        
                        
                        
                        
                        Text("${lang['contact_text3']}",
                        style: TextStyle(
                          fontSize: 0.442*f,
                          fontWeight: FontWeight.w600,
                          color: CacheData.getData(key: 'color-white-black'),
                        ),),
                        SizedBox(height:0.0111*h),
                
                        Container(
                          margin: EdgeInsets.only(left:0.085*w),
                          width: 0.97223*w,
                          height: 0.1519*w,
                          padding: EdgeInsets.fromLTRB(0.04557*w, 0, 0.023*w, 0),
                          decoration: BoxDecoration(
                            color: CacheData.getData(key: 'color-black2-white2'),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                            color: const Color.fromRGBO(246, 96, 34, 1),
                            width: 2.0,
                          ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Support123@gmail.com',
                                 style: TextStyle(
                                   fontSize: 0.442*f,
                                   fontWeight: FontWeight.w500,
                                   color: CacheData.getData(key: 'color-white-black'),
                                 ),),
                              
                               TextButton(onPressed: (){
                                Clipboard.setData(ClipboardData(text: 'Support123@gmail.com'));
                               },
                                child: Text("${lang['contact_copy']}",
                                style: TextStyle(
                                  color: Color.fromRGBO(246, 96, 34, 1)
                                ),
                                )),
                            ],
                          ),
                        ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 25,),
                  ],
                ),
              ),
              
        
            ],
          ),
        ),
      ),
    );
  }
}

