import 'package:flutter/material.dart';
import 'package:mega/cache/global.dart';
import 'package:mega/cache/language.dart';



class ForgotPasswordScreen2 extends StatefulWidget {
  const ForgotPasswordScreen2({super.key});

  @override
  State<ForgotPasswordScreen2> createState() => _ForgotPasswordScreen2State();
}

class _ForgotPasswordScreen2State extends State<ForgotPasswordScreen2> {


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
                
                SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: SizedBox(
                    
                    child: Column(
                      children: [
        
                      
                        SafeArea(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              
                              
                          
                             Container(
                              margin: EdgeInsets.only(left: 0.0309*w),
                               child: TextButton(
                                
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Image(image: AssetImage(CacheData.getData(key: 'back-arrow'),),
                                        height: 0.1914*w,
                                        width: 0.2126*w,
                                        ),
                                      ),
                             ),
                            Text("${lang['forgot_password2_text1']}",
                            style:TextStyle(
                              fontSize: double.parse("${lang_size['forgot_password_text1']}") * f,
                              fontWeight: FontWeight.w200,
                              color:CacheData.getData(key: 'color-white-black'),
                            ),
                            ),
                            SizedBox(width: 0.319*w,),
                            ],
                          ),
                        ),
                         SizedBox(height: 0.0592*h),
                        Container(
                          child:  Image(image: AssetImage('images/password.png'),
                          height: 0.1352*h,
                          width: 0.1352*h,),
                        ),
                         SizedBox(height: 0.0474*h),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 0.0607*w),
                          child: Column(
                            children: [
                              SizedBox(
                                width: w,
                                height: w*0.165,
                                child:  InputField(
                                  controller: text1,
                                  hintText: "${lang['forgot_password2_text2']}",
                                  isPassword: true,
                                ),
                              ),
                               SizedBox(height: 0.0118*h),
                              SizedBox(
                                width: w,
                                height: w*0.165,
                                child:  InputField(
                                  controller: text2,
                                  hintText: "${lang['forgot_password2_text3']}",
                                  isPassword: true,
                                ),
                              ),
                               SizedBox(height: 0.0236*h),
                             
                              
                              SizedBox(
                                width: w*0.7,
                                height: w*0.165,
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
                                    "${lang['forgot_password2_text4']}",
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
                        ),
                        SizedBox(height: 25,),
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