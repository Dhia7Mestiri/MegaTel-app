import 'package:flutter/material.dart';
import 'package:mega/cache/global.dart';
import 'package:mega/cache/language.dart';
import 'package:mega/cache/french.dart';
import 'package:mega/cache/english.dart';
import 'package:mega/cache/deutsch.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

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
            Positioned.fill(
              child: Image.asset(
                CacheData.getData(key: 'background'),
                fit: BoxFit.cover,
              ),
            ),
            Column(
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
                          Text("${lang['language_text1']}",
                          style:TextStyle(
                            fontSize: 0.553*f,
                            fontWeight: FontWeight.w200,
                            color: CacheData.getData(key: 'color-white-black'),
                          ),
                          ),
                          SizedBox(width: 0.1245*h),
                          ],
                        ),
                      ),
                
                        
                SizedBox(height: 0.0472*h,),
                Container(child: LanguageSelector()),
                SizedBox(height: 0.0118*h),
                        
                        
                SizedBox(
                          width: w*0.7,
                          height: w*0.165,
                          child: ElevatedButton(
                            onPressed: () {
                              if(test_lang=='English' || test_lang=='')
                              {
                                CacheData.setData(key: 'lang', value: 'English');
                                lang=anglais;
                                lang_size=english_size;
                              }
                              else if(test_lang=='Français')
                              {
                                CacheData.setData(key: 'lang', value: 'Français');
                                lang=french;
                                lang_size=french_size;
                              }
                              else{
                                CacheData.setData(key: 'lang', value: 'Deutsch');
                                lang=deutsch;
                                lang_size=deutsch_size;
                              }
                              Navigator.of(context).pop();


                              
                              
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
                            child: Text(
                              "${lang['language_text2']}",
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
          ],
        ),
      ),
    );
  }
}

class LanguageSelector extends StatefulWidget {
  @override
  _LanguageSelectorState createState() => _LanguageSelectorState();
}


class _LanguageSelectorState extends State<LanguageSelector> {
  String _selectedLanguage = CacheData.getData(key: 'lang');
  
   // Default language

  void _selectLanguage(String language) {
    setState(() {
      _selectedLanguage = language;
      test_lang=_selectedLanguage;
    });
  }

  @override
  Widget build(BuildContext context) {

final w=MediaQuery.of(context).size.width*0.8;
final h=MediaQuery.of(context).size.height;
final f=w*0.11;
    return Container(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0.1215*w, 0, 0.1215*w, 0),
            child: _buildLanguageTile('Français', Icons.language)),
          SizedBox(height: 0.0177*h),
          Container(
            padding: EdgeInsets.fromLTRB(0.1215*w, 0, 0.1215*w, 0),
            child: _buildLanguageTile('English', Icons.language)),
          SizedBox(height: 0.0177*h),
          Container(
            padding: EdgeInsets.fromLTRB(0.1215*w, 0, 0.1215*w, 0),
            child: _buildLanguageTile('Deutsch', Icons.language)),
          SizedBox(height: 0.0555*h),
          Center(
            child: Text(
              '$_selectedLanguage',
              style: TextStyle(fontSize: 0.442*f,
              color: CacheData.getData(key: 'color-white-black'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageTile(String language, IconData icon) {
final w=MediaQuery.of(context).size.width*0.8;
final h=MediaQuery.of(context).size.height;
final f=w*0.11;
    return GestureDetector(
      onTap: () => _selectLanguage(language),
      child: Container(
        
        padding: EdgeInsets.all(0.06076*w),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(241, 244, 255, 1.000),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          
          children: [
            Icon(
              icon,
              color: Colors.green,
            ),
            SizedBox(width: 0.0304*w),
            Text(
              language,
              style: TextStyle(
                fontSize: 0.4143*f,
                color: const Color.fromARGB(255, 0, 0, 0)),
            ),
            Spacer(),
            if (_selectedLanguage == language)
              Icon(
                Icons.check,
                size: 0.0354*h,
                color: Color.fromARGB(255, 6, 233, 67),
              ),
            if (_selectedLanguage == language) SizedBox(height: 0.04484*h),
          ],
        ),
      ),
    );
  }
}
