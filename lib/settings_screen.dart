import 'package:flutter/material.dart';
import 'package:mega/language_screen.dart';
import 'package:mega/reset_password_screen.dart';
import 'package:mega/cache/global.dart';
import 'package:flutter/services.dart';
import 'package:mega/cache/language.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  
  

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
  
}

class _SettingsScreenState extends State<SettingsScreen> with SingleTickerProviderStateMixin {
  

  bool _switchDarkValue = CacheData.getData(key: 'Mode')!='light';
  bool _switchNotificationValue = true;
  late AnimationController _animationController;
  late bool _isOpened;
  

  @override
  void initState() {
    super.initState();
    _isOpened = false;
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  

  void _toggleSidebar() {
    setState(() {
      if (_isOpened) {
        _animationController.reverse();
      } else {
        _animationController.forward();
      }
      _isOpened = !_isOpened;
    });
  }

  Widget _buildDeleteButton() {
    
final w=MediaQuery.of(context).size.width*0.8;

final f=w*0.11;

    return SizedBox(
      width: double.parse("${lang_size['settings_box_text7']}")*w,
      height: 0.1823*w,
      child: ElevatedButton(
        onPressed: _toggleSidebar,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.delete,
              size: 0.9116*f,
              color: const Color.fromRGBO(57, 69, 81, 1.000),
            ),
            SizedBox(width: 0.02126*w),
            Text(
              "${lang['settings_text7']}",
              style: TextStyle(
                fontSize: double.parse("${lang_size['settings_text7']}")*f,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
        
  
final w=MediaQuery.of(context).size.width*0.8;
final h=MediaQuery.of(context).size.height;
final f=w*0.11;
if(_switchDarkValue == false){
    CacheData.setData(key: 'Mode', value: 'light');
    CacheData.setData(key: 'background', value: 'images/background.png');
    CacheData.setData(key: 'back-arrow', value: 'images/back-arrow.png');
    CacheData.setData(key: 'shield', value: 'images/shield.png');
    CacheData.setData(key: 'settings', value: 'images/settings.png');
    CacheData.setData(key: 'edit', value: 'images/edit.png');
    CacheData.setData(key: 'support', value: 'images/support');
    CacheData.setData(key: 'color-white-black', value: Colors.black);
    CacheData.setData(key: 'shadow-size', value: -36.0);
    CacheData.setData(key: 'color-black-white', value: Colors.white);
    CacheData.setData(key: 'color-grey-white', value: Colors.white);
    CacheData.setData(key: 'color-black2-white2', value: Color.fromRGBO(255,255,255,1.000));
    CacheData.setData(key: 'color-green-orange', value: Color.fromRGBO(67, 192, 111, 0.204));
    CacheData.setData(key: 'color-textfield', value: Color.fromRGBO(241, 244, 255, 1.000));
    CacheData.setData(key: 'color-black-red', value: Colors.black);
    
        SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarDividerColor: Colors.white,
        statusBarIconBrightness: Brightness.dark));
        
  }
  else{
    CacheData.setData(key: 'Mode', value: 'Dark');
    CacheData.setData(key: 'background', value: 'images/background2.png');
    CacheData.setData(key: 'back-arrow', value: 'images/back-arrow2.png');
    CacheData.setData(key: 'shield', value: 'images/shield2.png');
    CacheData.setData(key: 'settings', value: 'images/settings2.png');
    CacheData.setData(key: 'edit', value: 'images/edit2.png');
    CacheData.setData(key: 'support', value: 'images/support2');
    CacheData.setData(key: 'color-white-black', value: Colors.white);
    CacheData.setData(key: 'shadow-size', value: -50.0);
    CacheData.setData(key: 'color-black-white', value: Colors.black);
    CacheData.setData(key: 'color-grey-white', value: Colors.grey);
    CacheData.setData(key: 'color-black2-white2', value: Color.fromRGBO(37,37,37,1.000));
    CacheData.setData(key: 'color-green-orange', value: Color.fromRGBO(251, 154, 36, 0.446));
    CacheData.setData(key: 'color-textfield', value: Colors.white);
    CacheData.setData(key: 'color-black-red', value: Color.fromARGB(255, 231, 0, 0));
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.black,
        systemNavigationBarDividerColor: Colors.black,
        statusBarIconBrightness: Brightness.light));   
        
    
  }


    return MaterialApp(
      
      
      debugShowCheckedModeBanner: false,
      title: 'MegaTel',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                CacheData.getData(key: 'background'),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 0.46239*h),
            
            _buildTopBar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 0.154*h),
                    Container(
                      width: 1.033*w,
                      height: 0.3038*w,
                      decoration: BoxDecoration(
                          color: CacheData.getData(key: 'color-green-orange'),
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 0.0486*w,),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color.fromRGBO(95, 84, 79, 1),
                                width: 0.0121*w,
                              ),
                            ),
                            child: ClipOval(
                              child: Image.network(
                                'https://resize.elle.fr/square/var/plain_site/storage/images/elle-man/news/elle-man-c-est-nouveau-et-masculin-2607407/43511092-1-fre-FR/ELLE-MAN-c-est-nouveau-et-masculin.jpg',
                                width: 0.21267*w,
                                height: 0.21267*w,
                              ),
                            ),
                          ),
                          SizedBox(width: 0.06076*w),
                          Text(
                            'Dhia El Ayeb',
                            style: TextStyle(
                              fontSize: 0.6077*f,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 0.0236*h),
                    _buildButtonWithIcon(
                      Icons.edit_note_sharp,
                      "${lang['settings_text2']}",
                      () {},
                      trailing: Icon(Icons.arrow_forward_ios, color: const Color.fromRGBO(246, 96, 34, 1),),
                    ),
                    SizedBox(height: 0.0118*h),
                    _buildButtonWithIcon(
                      Icons.language,
                      "${lang['settings_text3']}",
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LanguageScreen()),
                        );
                      },
                      trailing: Icon(Icons.arrow_forward_ios, color: const Color.fromRGBO(246, 96, 34, 1),),
                    ),
                    SizedBox(height: 0.0118*h),
                    _buildButtonWithIcon(
                      Icons.notifications_active,
                      "${lang['settings_text4']}",
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
                    SizedBox(height: 0.0118*h),
                    _buildButtonWithIcon(
                      Icons.dark_mode,
                      "${lang['settings_text5']}",
                      () {
                        setState(() {
                          _switchDarkValue = !(_switchDarkValue);
                          CacheData.setData(key: 'test', value: 1);
                        });
                        
                      },
                      trailing: Switch(
                        value: _switchDarkValue,
                        onChanged: (bool newValue) {
                          setState(() {
                            _switchDarkValue = newValue;
                            
                          });
                          
                        },
                        activeColor: Color.fromRGBO(246, 96, 34, 1),
                      ),
                    ),
                    SizedBox(height: 0.0118*h),
                    _buildButtonWithIcon(
                      Icons.lock_reset_sharp,
                      "${lang['settings_text6']}",
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ResetPasswordScreen()),
                        );
                      },
                      trailing: Icon(Icons.arrow_forward_ios, color: const Color.fromRGBO(246, 96, 34, 1),),
                    ),
                    SizedBox(height: 0.0118*h),
                    _buildDeleteButton(),
                  ],
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: Offset(0.0, 1.0),
                      end: Offset(0.0, 0.0),
                    ).animate(_animationController),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 239, 252, 255),
                        border: Border(
                          left: BorderSide(width:0.0552*f, color: const Color.fromRGBO(246, 96, 34, 1)),
                          right: BorderSide(width: 0.0552*f, color: const Color.fromRGBO(246, 96, 34, 1)),
                          top: BorderSide(width: 0.0552*f, color: const Color.fromRGBO(246, 96, 34, 1)),
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      height: MediaQuery.of(context).size.height / 2,
                      margin: EdgeInsets.symmetric(horizontal: 0.10633*w),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 0.1215*w,
                              height: 0.01215*w,
                              margin: EdgeInsets.symmetric(vertical: 0.0095*h),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(246, 96, 34, 1),
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                          ),
                          SizedBox(height: 0.0374*h),
                          Container(
                            width: 0.304*w,
                            height: 0.304*w,
                            child: Image(image: AssetImage('images/trash.png')),
                          ),
                          SizedBox(height: 0.0118*h,),
                          Text(
                            "${lang['settings_text8']}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 0.5*f,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 0.0236*h),
                          SizedBox(
                            width: 0.55*w,
                            height: 0.1367*w,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color.fromRGBO(246, 96, 34, 1),
                                ),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              child:  Text(
                                "${lang['settings_text9']}",
                                style: TextStyle(
                                  fontSize: 0.45*f,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 0.0059*h),
                          TextButton(
                            onPressed: _toggleSidebar,
                            child:  Text(
                              "${lang['settings_text10']}",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 0.45*f,
                                color: Color.fromRGBO(246, 96, 34, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
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

  Widget _buildTopBar() {
    
final w=MediaQuery.of(context).size.width*0.8;

final f=w*0.11;

    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 0.0304*w),
            child: TextButton(
              onPressed: () {
                
                Navigator.of(context).pop();
              },
              child: Image(
                image: AssetImage(CacheData.getData(key: 'back-arrow'),),
                height: 0.1914*w,
                width: 0.2126*w,
              ),
            ),
          ),
          Text(
            "${lang['settings_text1']}",
            style: TextStyle(
              fontSize: 0.553*f,
              color: CacheData.getData(key: 'color-white-black'),
              fontWeight: FontWeight.w200,
            ),
          ),
          SizedBox(width: 0.319*w),
        ],
      ),
    );
  }
}
