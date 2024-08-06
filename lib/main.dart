import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:mega/splash_screen.dart';
import 'package:mega/test.dart';
import 'package:mega/cache/global.dart';
import 'package:mega/cache/language.dart';
import 'package:mega/cache/french.dart';
import 'package:mega/cache/english.dart';
import 'package:mega/cache/deutsch.dart';


Future<void> main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await CacheData.cacheInitialization();
    if(CacheData.getData(key: 'Mode')==null || CacheData.getData(key: 'Mode')=='light'){
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
    CacheData.setData(key: 'test', value: 0);
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
    CacheData.setData(key: 'color-white-black', value:  Colors.white);
    CacheData.setData(key: 'shadow-size', value: -50.0);
    CacheData.setData(key: 'color-black-white', value: Colors.black);
    CacheData.setData(key: 'color-grey-white', value: Colors.grey);
    CacheData.setData(key: 'color-black2-white2', value: Color.fromRGBO(37,37,37,1.000));
    CacheData.setData(key: 'color-green-orange', value: Color.fromRGBO(251, 154, 36, 0.446));
    CacheData.setData(key: 'color-black-red', value: Color.fromARGB(255, 231, 0, 0));
    CacheData.setData(key: 'color-textfield', value: Colors.white);
    CacheData.setData(key: 'test', value: 0);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.black,
        systemNavigationBarDividerColor: Colors.black,
        statusBarIconBrightness: Brightness.light));
  }

  if (CacheData.getData(key: 'lang')==null || CacheData.getData(key: 'lang')=='English') {
    lang=anglais;
    lang_size=english_size;
    CacheData.setData(key: 'lang', value: 'English');
  }
  else if(CacheData.getData(key: 'lang')=='Français'){
    lang=french;
    lang_size=french_size;
    
  }
  else{
    lang=deutsch;
    lang_size=deutsch_size;

  }
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

  runApp(
    const MyApp(),
  );
}
class MyApp extends StatelessWidget {

  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {





    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      title:'MegaTel',
      //home: SplashScreen(),
      home: TestScreen(),

    );
  }
}