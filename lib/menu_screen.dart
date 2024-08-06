
import 'package:flutter/material.dart';
import 'package:mega/cache/global.dart';
import 'package:mega/cache/language.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
bool _switchNotificationValue = true;  





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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                Container(
                                  margin: EdgeInsets.only(top: 0.08062*h),
                                  child: ProfileImage()),
                              Container(
                                margin: EdgeInsets.fromLTRB(0.09115 *w, 0.01541 *h, 0, 0),
                                child: TextButton(
                                  onPressed: (){},
                                  child: Image(image: AssetImage(CacheData.getData(key: 'settings')),
                                  width: 0.04743 *h,
                                  height: 0.04743 *h,
                                  ),
                                ),
                                padding: EdgeInsets.only(right: 0.03038 *w),
                              ),
                             
                              ],
                            ),
                          ),
                          SizedBox(height: 0.00711 *h,),
                          Text('Dhia El Ayeb',
                          style: TextStyle(
                            color: CacheData.getData(key: 'color-white-black'),
                            fontSize:  0.60764 *f,
                            fontWeight: FontWeight.w500,
                          ),
                          ),
                          SizedBox(height: 0.02371 *h),
                      _buildButtonWithIcon(
                        Icons.account_circle_outlined,
                        "${lang['menu_text1']}",
                        () {},
                        trailing: Icon(Icons.arrow_forward_ios, color: const Color.fromRGBO(246, 96, 34, 1),),
                      ),
                      
                      SizedBox(height:   0.01186 *h),
                      _buildButtonWithIcon(
                        Icons.language,
                       "${lang['menu_text2']}",
                        () {},
                        trailing: Icon(Icons.arrow_forward_ios, color: const Color.fromRGBO(246, 96, 34, 1),),
                      ),
                      SizedBox(height:   0.01186 *h),
                      
                      _buildButtonWithIcon(
                        Icons.notifications_active,
                        "${lang['menu_text3']}",
                        () {
                          setState(() {
                            _switchNotificationValue = !(_switchNotificationValue);
                            
                          });
                        },
                        trailing: Switch(
                          value: _switchNotificationValue,
                          onChanged: (bool newValue) {
                            
                            setState(() {
                              _switchNotificationValue = newValue;
                            });
                            
                         
                                      
                            
                          },
                          activeColor: Color.fromRGBO(246, 96, 34, 1),
                        ),
                      ),
        
        
                      SizedBox(height:   0.01186 *h),
        
                       _buildButtonWithIcon(
                        Icons.phone,
                        "${lang['menu_text4']}",
                        () {},
                        trailing: Icon(Icons.arrow_forward_ios, color: const Color.fromRGBO(246, 96, 34, 1),),
                      ),
                      SizedBox(height:   0.01186 *h),
        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildButtonWithoutIcon(
                            Icons.info_outline,
                            "${lang['menu_text5']}",
                            () {},
                            
                          ),
                          SizedBox(width: 0.01519 *w,),
                           SizedBox(
                                   child:Container(
                                      width: w*0.5,
                                      height: 0.1823*w,
                                      decoration: BoxDecoration(
                                        color: const Color.fromRGBO(233,235,250,1.000),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child:Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                             children: [
                                               TextButton(
                                                 onPressed: () {},
                                                 style: TextButton.styleFrom(
                                                   padding: EdgeInsets.zero,
                                                   minimumSize: Size.zero, 
                                                 ),
                                                 child: Image(image: AssetImage('images/facebook.png'),
                                                 width: 0.04268 *h,
                                                 height: 0.04268 *h),
                                               ),
                                               TextButton(
                                                 onPressed: () {},
                                                 style: TextButton.styleFrom(
                                                   padding: EdgeInsets.zero,
                                                   minimumSize: Size.zero, 
                                                 ),
                                                 child: Image(image: AssetImage('images/instagram.png'),
                                                 width: 0.04268 *h,
                                                 height: 0.04268 *h),
                                               ),
                                               TextButton(
                                                 onPressed: () {},   
                                                 style: TextButton.styleFrom(
                                                   padding: EdgeInsets.zero,
                                                   minimumSize: Size.zero, 
                                                 ),
                                                 child: Image(image: AssetImage('images/linkedin.png'),
                                                 width: 0.04268 *h,
                                                 height: 0.04268 *h),
                                               ),
                                             ], 
                                          )
        
        
                                  ))
                                 
        
                                  
        
                                           
        
                 ],
                ),
                      SizedBox(height: 0.01186 *h),
        
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildButtonWithoutIcon(
                            Icons.help,
                            "${lang['menu_text6']}",
                            () {},
                            
                          ),
                          SizedBox(width: 0.01519 *w,),
                           _buildButtonWithoutIcon(
                            Icons.star_border_purple500_rounded,
                            "${lang['menu_text7']}",
                            () {},
                            
                          ),
                        ],
                      ),
                      SizedBox(height: 0.02371 *h),
                      TextButton(onPressed: (){}, child: Text("${lang['menu_text8']}",
                      style:TextStyle(
                        fontSize: 0.5524 *f,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(246, 96, 34, 1),
        
                      ),
                      
                      )),
                      
        
        
        
        
          
        
        
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






  
 Widget _buildButtonWithIcon(IconData icon, String label, Function() onPressed, {Widget? trailing}) {
  final w=MediaQuery.of(context).size.width*0.8;

final f=w*0.11;

    return SizedBox(
      width: 1.0178*w,
      height: 0.1823*w,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromRGBO(241, 244, 255, 1.000),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  size: 0.10026*w,
                  color: const Color.fromRGBO(57, 69, 81, 1.000),
                ),
                SizedBox(width: 0.021267*w),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 0.5*f,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
              ],
            ),
            if (trailing != null) trailing,
          ],
        ),
      ),
    );
  }

  Widget _buildButtonWithoutIcon(IconData icon, String label, Function() onPressed,) {
  final w=MediaQuery.of(context).size.width*0.8;

final f=w*0.11;

    return Container(
      width: w*0.5,
      height: 0.1823*w,
      
      
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromRGBO(241, 244, 255, 1.000),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(width: 0.041267*w),
                Icon(
                  icon,
                  size: 0.09*w,
                  color: const Color.fromRGBO(57, 69, 81, 1.000),
                ),
                SizedBox(width: 0.011267*w),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 0.44*f,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0, 0, 0, 1),
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
      width: 0.3737 *w,
      height: 0.3737 *w,
      
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
        left: 0.03239 *w
,
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
       
