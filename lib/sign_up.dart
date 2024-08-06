import 'package:flutter/material.dart';
import 'package:mega/login.dart';
import 'package:mega/cache/global.dart';
import 'package:mega/cache/language.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

final TextEditingController text1 = TextEditingController();
final TextEditingController text2 = TextEditingController();
final TextEditingController text3 = TextEditingController();
final TextEditingController text4 = TextEditingController();
final TextEditingController text5 = TextEditingController();
final TextEditingController text6 = TextEditingController();

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
        
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                
                SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: SizedBox(
                    
                    child: Column(
                      children: [
                        SizedBox(width: double.infinity,),
                         SizedBox(height: h*0.0829),
                         Text(
                          "${lang['sign_in_text1']}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 0.7734*f,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(246, 96, 34, 1),
                          ),
                        ),
                         SizedBox(height: h*0.0237),
                         Text(
                          "${lang['sign_in_text2']}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: f*0.44,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: CacheData.getData(key: 'color-white-black'),
                          ),
                        ),
                         SizedBox(height: h*0.045),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: w*0.0607),
                          child: Column(
                            children: [
                              SizedBox(
                                width: w,
                                height: w*0.165,
                                child:  InputField(
                                  controller: text1,
                                hintText: "${lang['sign_in_text3']}",
                                ),
                              ),
                               SizedBox(height:h*0.0118 ),
                              SizedBox(
                                width: w,
                                height: w*0.165,
                                child:  InputField(
                                  controller: text2,
                                  hintText: "${lang['sign_in_text4']}",
                                ),
                              ),
                               SizedBox(height: h*0.0118),
                              SizedBox(
                                width: w,
                                height: w*0.165,
                                child:  InputField(
                                  controller: text3,
                                  hintText: "${lang['sign_in_text5']}",
                                  
                                ),
                              ),
                               SizedBox(height: h*0.0118),
                              SizedBox(
                                width: w,
                                height: w*0.165,
                                child:  InputField(
                                  controller: text4,
                                  hintText: "${lang['sign_in_text6']}",
                                ),
                              ),
                               SizedBox(height: h*0.0118),
                              SizedBox(
                                width: w,
                                height: w*0.165,
                                child:  InputField(
                                  controller: text5,
                                  hintText: "${lang['sign_in_text7']}",
                                  isPassword: true,
                                ),
                              ),
                               SizedBox(height: h*0.0118),
                              SizedBox(
                                width: w,
                                height: w*0.165,
                                child:  InputField(
                                  controller: text6,
                                  hintText: "${lang['sign_in_text8']}",
                                  isPassword: true,
                                ),
                              ),
                               SizedBox(height: h*0.0236),
                              
                               SizedBox(height: h*0.0236),
                              SizedBox(
                                width: w*0.7,
                                height:w*0.165,
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
                                    "${lang['sign_in_text9']}",
                                    style: TextStyle(
                                      fontSize: f*0.552,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height:h*0.0118),
                              TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const LoginScreen()),
                                     );
                                     }, // Placeholder onPressed function 
                                    child:  Text(
                                      "${lang['sign_in_text10']}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: f*0.3,
                                        color: CacheData.getData(key: 'color-white-black'),
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