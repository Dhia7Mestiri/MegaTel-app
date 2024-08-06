import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mega/cache/global.dart';
import 'package:mega/cache/language.dart';

class MyAgentsScreen extends StatefulWidget {
  const MyAgentsScreen({super.key});

  @override
  State<MyAgentsScreen> createState() => _MyAgentsScreenState();
}

class _MyAgentsScreenState extends State<MyAgentsScreen> {
  @override
  Widget build(BuildContext context) {

final w=MediaQuery.of(context).size.width*0.8;
final h=MediaQuery.of(context).size.height;
final f=w*0.11;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MegaTel',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Stack(
              children: [
                Container(
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
                                             child: Image(image: AssetImage(CacheData.getData(key: 'back-arrow'),),
                                              height: 0.074694*h,
                                              width: 0.08299*h,
                                              ),
                                            ),
                                   ),
                                  Text("${lang['my_agents_text1']}",
                                  style:TextStyle(
                                   color: CacheData.getData(key: 'color-white-black'),
                                    fontSize: 0.5524 *f,
                                    fontWeight: FontWeight.w300,
                                  ),
                                  ),
                                  SizedBox(width: 0.31901 *w),
                                  ],
                                ),
                              ),
                              SizedBox(height: 0.01778 *h,),
                              Agent('Chiheb Jaballah','1${lang['my_agents_text3']}','https://resize.elle.fr/square/var/plain_site/storage/images/elle-man/news/elle-man-c-est-nouveau-et-masculin-2607407/43511092-1-fre-FR/ELLE-MAN-c-est-nouveau-et-masculin.jpg'),
                              SizedBox(height: 0.01778 *h,),
                              Agent('Dhia mestiri','1${lang['my_agents_text3']}','https://resize.elle.fr/square/var/plain_site/storage/images/elle-man/news/elle-man-c-est-nouveau-et-masculin-2607407/43511092-1-fre-FR/ELLE-MAN-c-est-nouveau-et-masculin.jpg'),
                              SizedBox(height: 0.01778 *h,),
                              Agent('Dhia el Ayeb','1${lang['my_agents_text3']}','https://resize.elle.fr/square/var/plain_site/storage/images/elle-man/news/elle-man-c-est-nouveau-et-masculin-2607407/43511092-1-fre-FR/ELLE-MAN-c-est-nouveau-et-masculin.jpg'),
                             SizedBox(height: 0.01778 *h,),
                             
                                     
                              
                              
                              
                              
                              
                              
                              
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
class Agent extends StatelessWidget {
    final String fullname;
  final String temp;
  final String image_url;

  Agent(this.fullname, this.temp, this.image_url);

          @override
          Widget build(BuildContext context) {

final w=MediaQuery.of(context).size.width*0.8;
final h=MediaQuery.of(context).size.height;
final f=w*0.11;

            return Container(
      width: 1.17579 *w,
      height: 0.30382 *w,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 1.17579 *w,
        height: 0.30382 *w,
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
      color : CacheData.getData(key: 'color-grey-white'),
  )
      )
      ),Positioned(
        top: 0.05098 *h,
        right: 0.26432*w,
        
        child: Text("${lang['my_agents_text2']}", textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(95, 95, 95, 1),

        fontSize: 0.33144 *f,
        letterSpacing: 0,
        fontWeight: FontWeight.normal,
        height: 0.04143 *f ,
      ),)
      ),Positioned(
        top: 0.0498 *h,
        left: 1.09376 *w,
        child: Image(image: AssetImage('images/clock.png'),
        width: 0.06076 *w,
        height: 0.06076 *w,
        ),
      ),Positioned(
        top: 0.05098 *h,
        left: 0.23394 *w,
        child: Text(fullname, textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(30, 30, 30, 1),

        fontSize: 0.38668 *f,
        letterSpacing: 0 ,
        fontWeight: FontWeight.w400,
        height: 0.02762 *f,
      ),)
      ),Positioned(
        top:  0.0498 *h,
        left: 0.92666 *w,
        child: Text(temp, textAlign: TextAlign.left, style: TextStyle(
        color: Color.fromRGBO(57, 57, 57, 1),
        
        fontSize: 0.38668 *f,
        letterSpacing: 0 ,
        fontWeight: FontWeight.w500,
        height: 0.04143 *f ,
      ),)
      ),Positioned(
        top: 0.02253 *h,
        left: 0.01823 *w,
        child: Container(
          decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Color.fromRGBO(243, 158, 11, 1),
            width: 2,
          ),
        ),
          child: ClipOval(
                 child: Image.network(
                    image_url,
           width: 0.18229 *w,
           height: 0.18229 *w,
                 ),
               ),
        ),
      ),
        ]
      )
    );
          }
        }