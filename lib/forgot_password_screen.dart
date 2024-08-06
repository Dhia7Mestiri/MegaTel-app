import 'package:flutter/material.dart';
import 'package:mega/cache/global.dart';
import 'package:mega/cache/language.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {


final TextEditingController text1 = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width * 0.8;
    final h = MediaQuery.of(context).size.height;
    final f = w * 0.11;
    

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MegaTel',
      theme: ThemeData(fontFamily: 'Poppins'),
      home: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  CacheData.getData(key: 'background'),
                  fit: BoxFit.cover,
                ),
              ),
              SingleChildScrollView(
                padding:
                EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      SafeArea(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 0.03039 * w),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Image(
                                  image: AssetImage(
                                    CacheData.getData(key: 'back-arrow'),
                                  ),
                                  height: 0.1915 * w,
                                  width: 0.2126 * w,
                                ),
                              ),
                            ),
                            Text(
                              "${lang['forgot_password_text1']}",
                              style: TextStyle(
                                color: CacheData.getData(key: 'color-white-black'),
                                fontSize: double.parse("${lang_size['forgot_password_text1']}") * f,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            SizedBox(width: 0.319 * w),
                          ],
                        ),
                      ),
                      SizedBox(height: 0.07113 * h),
                      Text(
                        "${lang['forgot_password_text2']}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 0.635 * f,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: CacheData.getData(key: 'color-black-red'),
                        ),
                      ),
                      SizedBox(height: 0.03556 * h),
                      Text(
                        "${lang['forgot_password_text3']}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 0.3315 * f,
                          fontFamily: 'Poppins',
                          color: const Color.fromRGBO(134, 131, 131, 1.000),
                        ),
                      ),
                      SizedBox(height: 0.03556 * h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0.0607 * w),
                        child: Column(
                          children: [
                            SizedBox(
                              width: w,
                              height: w * 0.165,
                              child: InputField(
                                controller: text1,
                                hintText: "${lang['forgot_password_text4']}",
                              ),
                            ),
                            SizedBox(height: 0.0236 * h),
                            SizedBox(
                              width: w * 0.7,
                              height: w * 0.165,
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
                                child: Text(
                                  "${lang['forgot_password_text5']}",
                                  style: TextStyle(
                                    fontSize: 0.553 * f,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
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
      ),
    );
  }
}
