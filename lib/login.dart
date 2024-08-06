import 'package:flutter/material.dart';
import 'package:mega/sign_up.dart';
import 'package:mega/forgot_password_screen.dart';
import 'package:mega/cache/global.dart';
import 'package:mega/cache/language.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  
  final TextEditingController text1 = TextEditingController();
  final TextEditingController text2 = TextEditingController();
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
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: SizedBox(
                      
                      child: Column(
                        children: [
                          SizedBox(height: h*0.162),
                           Text(
                            "${lang['login_text1']}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: f*0.675,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(246, 96, 34, 1),
                            ),
                          ),
                           SizedBox(height: h*0.0237),
                          Text(
                            "${lang['login_text2']}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: f*0.486,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: CacheData.getData(key: 'color-white-black'),
                            ),
                          ),
                          SizedBox(height: h*0.05),
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: f*0.486),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: w,
                                  height: w*0.165,
                                  child:  InputField(
                                    controller: text1,
                                    hintText: "${lang['login_text3']}",
                                  ),
                                ),
                                 SizedBox(height: h*0.0118),
                                 SizedBox(
                                  width: w,
                                  height: w*0.165,
                                   child: InputField(
                                    controller: text2,
                                    hintText: "${lang['login_text4']}",
                                    isPassword: true,
                                                                 ),
                                 ),
                                 SizedBox(height: h*0.0137),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const ForgotPassword()),
                                      );
                                      },
                                      child:  Text(
                                        "${lang['login_text5']}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: f*0.316,
                                          color: Color.fromRGBO(246, 96, 34, 1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: w*0.04),
                                  ],
                                ),
                                 SizedBox(height: h*0.0237),
                                SizedBox(
                                  width: w*0.7,
                                  height: w*0.17,
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
                                      "${lang['login_text6']}",
                                      style: TextStyle(
                                        fontSize: f*0.486,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                 SizedBox(height:h*0.015),
                                TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const SignUpScreen()),
                                      );
                                      }, // Placeholder onPressed function
                                      child:  Text(
                                        "${lang['login_text7']}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: f*0.328,
                                          color: CacheData.getData(key: 'color-white-black'),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 25,),
                              
                              
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class InputField extends StatefulWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController controller;

  const InputField({
    required this.hintText,
    required this.controller,
    this.isPassword = false,
    Key? key,
  }) : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width * 0.8;
    final f = w * 0.11;
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isPassword && _obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontSize: f * 0.4,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: const Color.fromRGBO(246, 96, 34, 1),
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
          BorderSide(color: CacheData.getData(key: 'color-textfield'),),
        ),
        filled: true,
        fillColor: CacheData.getData(key: 'color-textfield'),
     suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
              )
            : null,
      ),
    );
  }
}