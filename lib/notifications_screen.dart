import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mega/cache/global.dart';
import 'package:mega/cache/language.dart';

class NotficationsScreen extends StatefulWidget {
  const NotficationsScreen({super.key});

  @override
  State<NotficationsScreen> createState() => _NotficationsScreenState();
}

class _NotficationsScreenState extends State<NotficationsScreen> {

  @override
  Widget build(BuildContext context) {
  

  final w=MediaQuery.of(context).size.width*0.8;
final h=MediaQuery.of(context).size.height;
final f=w*0.11;
    int number_msg=1;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MegaTel',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Scaffold(
            resizeToAvoidBottomInset: false, 
            body: Stack(
              children: [Container(
                  child: Positioned.fill(
                    child: Image.asset(
                      CacheData.getData(key: 'background'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
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
                                  Text( "${lang['notifications_text1']}",
                                  style:TextStyle(
                                    color: CacheData.getData(key: 'color-white-black'),
                                    fontSize: 0.5524 *f,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0.03342 *w, 0,  0.03038 *w, 0),
                                    child: TextButton(onPressed: (){},
                                     child: Text("${lang['notifications_text2']}",
                                      style: TextStyle(
                                                fontSize: 0.35906 *f,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(246, 96, 34, 1),
                                                
                                              ),
                                     )),
                                  )
                                  ],
                                ),
                              ),
                              SizedBox(height: 0.01778 *h,),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 0.06076 *w),
                                    child: Text('${lang['notifications_text3']} $number_msg ${lang['notifications_text4']}',
                                    style: TextStyle(
                                                  color: CacheData.getData(key: 'color-white-black'),
                                                  fontSize: 0.35906 *f,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),),
                                  ),
                                ],
                              ),
                              SizedBox(height: 0.01186 *h,),
                              
                              msg("Subject: Complete Your Profile Information\nHi [Client's Name],",
                              "To enhance your experience with us, we kindly ask you to complete your profile details. Your preferences matter to us, and this will help us serve you better.\n\nThank you for your cooperation!\nMega Tel Team",
                              80,
                              'March 21, 2024,',
                              '16:15'),
                      
                      
                             readed_msg("Subject: Welcome to Mega Tel!\nDear [Client's Name],",
                               "Welcome to Mega Tel! 🎉 We're thrilled to have you on board and look forward to providing you with top-notch telecom services. If you need any assistance, feel free to reach out anytime!\n\nBest, [Your Name]\nMega Tel Team",
                              80,
                              'March 21, 2024,',
                              '16:15'),
                             readed_msg("Subject: Welcome to Mega Tel!\nDear [Client's Name],",
                               "Welcome to Mega Tel! 🎉 We're thrilled to have you on board and look forward to providing you with top-notch telecom services. If you need any assistance, feel free to reach out anytime!\n\nBest, [Your Name]\nMega Tel Team",
                              80,
                              'March 21, 2024,',
                              '16:15'),
                              
                             readed_msg("Subject: Welcome to Mega Tel!\nDear [Client's Name],",
                               "Welcome to Mega Tel! 🎉 We're thrilled to have you on board and look forward to providing you with top-notch telecom services. If you need any assistance, feel free to reach out anytime!\n\nBest, [Your Name]\nMega Tel Team",
                              80,
                              'March 21, 2024,',
                              '16:15'),
                              
                             readed_msg("Subject: Welcome to Mega Tel!\nDear [Client's Name],",
                               "Welcome to Mega Tel! 🎉 We're thrilled to have you on board and look forward to providing you with top-notch telecom services. If you need any assistance, feel free to reach out anytime!\n\nBest, [Your Name]\nMega Tel Team",
                              80,
                              'March 21, 2024,',
                              '16:15'),

                            readed_msg("Subject: Welcome to Mega Tel!\nDear [Client's Name],",
                               "Welcome to Mega Tel! 🎉 We're thrilled to have you on board and look forward to providing you with top-notch telecom services. If you need any assistance, feel free to reach out anytime!\n\nBest, [Your Name]\nMega Tel Team",
                              80,
                              'March 21, 2024,',
                              '16:15'),
                              
                            readed_msg("Subject: Welcome to Mega Tel!\nDear [Client's Name],",
                               "Welcome to Mega Tel! 🎉 We're thrilled to have you on board and look forward to providing you with top-notch telecom services. If you need any assistance, feel free to reach out anytime!\n\nBest, [Your Name]\nMega Tel Team",
                              80,
                              'March 21, 2024,',
                              '16:15'),
                              
                              
                      
                      
                      
                              SizedBox(height: 0.02964 *h,),
                            
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
    );
                
            
  }
}
class msg extends StatelessWidget {
    final String subject;
  final String text1;
  final String date;
  final String time;
  final double long_msg;
  
 

  msg(this.subject, this.text1,this.long_msg,this.date,this.time);
          @override
          Widget build(BuildContext context) {
    
 final w=MediaQuery.of(context).size.width*0.8;
final f=w*0.11;
 
            return Container(
              
      width: 1.22744 *w,
      height: ((90+long_msg)/329.14)*w,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0.00911 *w,
        child: Container(

      width: 1.23048 *w,
      height:((120+long_msg)/329.14)*w,
      
      
      child: Stack(
        children:[
          Positioned(
        top: 0.03646 *w,
        left: 0.05165 *w,
        child: Container(
        width: 1.12414 *w,
        height: ((70+long_msg)/329.14)*w,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
      boxShadow : [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(0,1),
          blurRadius: 4
      )],
      color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),Positioned(
        top: 0.10938 *w,
        left: 1.0178 *w,
        child: Text(time, textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(8, 8, 8, 1),
        
        fontSize: 0.2762 *f,
        letterSpacing: 0 ,
        fontWeight: FontWeight.w500,
        height:0.02762 *f,
      ),)
      ),Positioned(
        top: 0.06988 *w,
        left: 0.93881 *w,
        child: Text(date, textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(8, 8, 8, 1),
        fontFamily: 'Poppins',
        fontSize: 0.24858 *f,
        letterSpacing: 0 ,
        fontWeight: FontWeight.w600,
        height: 0.02762 *f,
      ),)
      ),
      Positioned(
        top: 0.04254 *w,
        left:  0.1671 *w,
        child: Container(
          padding: EdgeInsets.all(0.03038 *w),
          
          height: ((60+long_msg)/329.14)*w,
          width: 0.88108 *w,
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                
                width: 0.72917 *w,
                
                child: Text(subject, textAlign: TextAlign.left, style: TextStyle(
                color: Color.fromRGBO(8, 8, 8, 1),
                
                
                fontSize: 0.2762 *f,
                letterSpacing: 0 ,
                fontWeight: FontWeight.w600,
                height: 0.03591 *f
                      ),),
              ),
              SizedBox(height: 0.11048 *f,),
              Flexible(
                child: Text(text1, textAlign: TextAlign.left, style: TextStyle(
                color: Color.fromRGBO(8, 8, 8, 1),
                
                fontSize: 0.2762 *f,
                letterSpacing: 0 ,
                fontWeight: FontWeight.w600,
                height: 0.03591 *f,
                      ),),
              ),
            ],
          ),
        )
      ),Positioned(
        top: 0,
        left: 0,
        child: Container(
      width: 0.15495 *w,
      height: 0.17014 *w,
      decoration: BoxDecoration(
          
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0.02127 *w,
        left: -0.00304 *w,
        child: Container(
        width: 0.17926 *w,
        height: 0.1428 *w,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(9),
            topRight: Radius.circular(9),
            bottomLeft: Radius.circular(9),
            bottomRight: Radius.circular(9),
          ),
      color : Colors.transparent,
      border : Border.all(
          color: Colors.transparent,
          width: 1,
        ),
  )
      )
      ),Positioned(
        top:  -0.0395 *w,
        left: -0.03038 *w,
        child: Container(
        width: 0.20052 *w,
        height:  0.22179 *w,
        child:Image(image: AssetImage('images/logo.png'),
        height: 0.09115 *w,
        width: 0.09115 *w,
        )
      )
      ),
        ]
      )
    )
      ),
        ]
      )
    )
      ),
        ]
      )
    );
          }
        }
        



class readed_msg extends StatelessWidget {
    final String subject;
  final String text1;
  final String date;
  final String time;
  final double long_msg;
  
 

  readed_msg(this.subject, this.text1,this.long_msg,this.date,this.time);
          @override
          Widget build(BuildContext context) {
    
 final w=MediaQuery.of(context).size.width*0.8;

final f=w*0.11;
 
            return Container(
              
      width: 1.22744 *w,
      height: ((90+long_msg)/329.14)*w,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0.00911 *w,
        child: Container(

      width: 1.23048 *w,
      height:((120+long_msg)/329.14)*w,
      
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0.03646 *w,
        left: 0.05165 *w,
        child: Container(
        width: 1.12414 *w,
        height: ((70+long_msg)/329.14)*w,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
      boxShadow : [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.25),
          offset: Offset(0,1),
          blurRadius: 4
      )],
      color : Color.fromRGBO(255, 255, 255, 1),
  )
      )
      ),Positioned(
        top: 0.10938 *w,
        left: 1.0178 *w,
        child: Text(time, textAlign: TextAlign.left, style: TextStyle(
        color: Colors.grey,
       
        fontSize: 0.2762 *f,
        letterSpacing: 0 ,
        fontWeight: FontWeight.w500,
        height:0.02762 *f,
      ),)
      ),Positioned(
        top: 0.06988 *w,
        left: 0.93881 *w,
        child: Text(date, textAlign: TextAlign.left, style: TextStyle(
        color: Colors.grey,
        fontFamily: 'Poppins',
        fontSize: 0.24858 *f,
        letterSpacing: 0 ,
        fontWeight: FontWeight.w600,
        height: 0.02762 *f,
      ),)
      ),
      Positioned(
        top: 0.04254 *w,
        left:  0.1671 *w,
        child: Container(
          padding: EdgeInsets.all(0.03038 *w),
          
          height: ((60+long_msg)/329.14)*w,
          width: 0.88108 *w,
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                
                width: 0.72917 *w,
                
                child: Text(subject, textAlign: TextAlign.left, style: TextStyle(
                color: Colors.grey,
                
                
                fontSize: 0.2762 *f,
                letterSpacing: 0 ,
                fontWeight: FontWeight.w600,
                height: 0.03591 *f
                      ),),
              ),
              SizedBox(height: 0.11048 *f,),
              Flexible(
                child: Text(text1, textAlign: TextAlign.left, style: TextStyle(
                color: Colors.grey,
                
                fontSize: 0.2762 *f,
                letterSpacing: 0 ,
                fontWeight: FontWeight.w600,
                height: 0.03591 *f,
                      ),),
              ),
            ],
          ),
        )
      ),Positioned(
        top: 0,
        left: 0,
        child: Container(
      width: 0.15495 *w,
      height: 0.17014 *w,
      decoration: BoxDecoration(
          
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0.02127 *w,
        left: -0.00304 *w,
        child: Container(
        width: 0.17926 *w,
        height: 0.1428 *w,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(9),
            topRight: Radius.circular(9),
            bottomLeft: Radius.circular(9),
            bottomRight: Radius.circular(9),
          ),
      color : Colors.transparent,
      border : Border.all(
          color: Colors.transparent,
          width: 1,
        ),
  )
      )
      ),Positioned(
        top:  -0.0395 *w,
        left: -0.03038 *w,
        child: Container(
        width: 0.20052 *w,
        height:  0.22179 *w,
        child:Image(image: AssetImage('images/logo2.png'),
        height: 0.09115 *w,
        width: 0.09115 *w,
        )
      )
      ),
        ]
      )
    )
      ),
        ]
      )
    )
      ),
        ]
      )
    );
          }
        }
  