import 'package:flutter/material.dart';
import 'dart:async';
import 'package:mega/cache/global.dart';
import 'package:mega/cache/language.dart';


class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
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
      home: 
         Container(
        
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
                            Text("${lang['verification_text1']}",
                            style:TextStyle(
                              fontSize: double.parse("${lang_size['verification_text1']}") * f,
                              fontWeight: FontWeight.w200,
                              color: CacheData.getData(key: 'color-white-black')
                            ),
                            ),
                            SizedBox(width: 0.319*w,),
                            ],
                          ),
                        ),
        
        
        
                         SizedBox(height: 0.0708*h),
                        Container(
                          child:  Image(image: AssetImage(CacheData.getData(key: 'shield')),
                          height: 0.4253*w,
                          width: 0.43*w,
                          ),
                        ),
                         SizedBox(height: 0.0236*h,),
                         Text(
                          "${lang['verification_text2']}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 0.65*f,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            color:Color.fromRGBO(246, 96, 34, 1),
                          ),
                        ),
                         SizedBox(height: 0.0118*h),
                         Text(
                          "${lang['verification_text3']}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 0.359*f,
                            fontFamily: 'Poppins',
                            
                            color: Color.fromRGBO(134,131,131,1.000),
                          ),
                        ),
                         SizedBox(height: 0.0354*h),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal:0.06076*w ),
                          child: Column(
                            children: [
                               Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 0.1519*w,
                                    height: 0.25824*w,
                                    child: InputField(
                                      controller: text1,
                                      hintText: '',
                                    ),
                                  ),
                                  SizedBox(width: 0.02126*w,),
        
                                  SizedBox(
                                    width: 0.1519*w,
                                    height: 0.25824*w,
                                    child: InputField(
                                      controller: text2,
                                      hintText: '',
                                    ),
                                  ),
                                  SizedBox(width:0.02126*w,),
        
                                  SizedBox(
                                    width: 0.1519*w,
                                    height: 0.25824*w,
                                    child: InputField(
                                      controller: text3,
                                      hintText: '',
                                    ),
                                  ),
                                  SizedBox(width:0.02126*w,),
        
                                  SizedBox(
                                    width: 0.1519*w,
                                    height: 0.25824*w,
                                    child: InputField(
                                      controller: text4,
                                      hintText: '',
                                    ),
                                  ),
                                  SizedBox(width:0.02126*w,),
        
                                  SizedBox(
                                    width: 0.1519*w,
                                    height: 0.25824*w,
                                    child: InputField(
                                      controller: text5,
                                      hintText: '',
                                    ),
                                  ),
                                  SizedBox(width:0.02126*w,),
        
                                  SizedBox(
                                    width: 0.1519*w,
                                    height: 0.25824*w,
                                    child: InputField(
                                      controller: text6,
                                      
                                      hintText: '',
                                    ),
                                  ),
                                 
        
                                  
                                  
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   Text("${lang['verification_text4']}",
                                  style: TextStyle(
                                    fontSize: 0.442*f,
                                    fontWeight: FontWeight.w300,
                                    color: CacheData.getData(key: 'color-white-black'),
                                  ),),
                                   SizedBox(width: 0.27343*w,),
                                  Container(
                                    child:  Image(image: AssetImage('images/clock.png'),
                                    height: 0.09*w,
                                    width: 0.09*w,),
                                  ),
                                   CountdownTimer(duration: 90,fontSize:0.5*f,),
        
                                ],
                              ),
                              
                               SizedBox(height: 0.0236*h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  
                                  Text("${lang['verification_text5']}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 0.35*f,
                                    color: CacheData.getData(key: 'color-white-black'),
        
                                  ),),
                                  TextButton(
                                    
                                    onPressed: () {
                                     }, // Placeholder onPressed function 
                                    child:  Text(
                                      "${lang['verification_text6']}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 0.35*f,
                                        color: Color.fromRGBO(246, 96, 34, 1),
                                      ),
                                    ),
                                  )
                                  
                                ],
                              ),
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
                                    "${lang['verification_text7']}",
                                    style: TextStyle(
                                      fontSize: 0.553*f,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
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
    this.isPassword = false,
    required this.controller,
    super.key,
  });

  @override
  _InputFieldState createState() => _InputFieldState();
}


class _InputFieldState extends State<InputField> {

  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    
    _focusNode = FocusNode();
  }

  @override
  void dispose() {

    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
final w=MediaQuery.of(context).size.width*0.8;
final h=MediaQuery.of(context).size.height;
final f=w*0.11;

    return TextFormField(
      scrollPhysics: NeverScrollableScrollPhysics(),
      controller: widget.controller,
      focusNode: _focusNode,
      maxLength: 1,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        
        contentPadding:  EdgeInsets.symmetric(vertical: 0.02015*h, horizontal: 0.003*w),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: Color.fromRGBO(246, 96, 34, 1),
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(color: Color.fromRGBO(241, 244, 255, 1.000)),
        ),
        filled: true,
        counterText: '',
        fillColor: const Color.fromRGBO(203, 214, 255, 1.000),
        hintStyle:  TextStyle(fontSize: 0.8287*f, color: Colors.black),
        
      ),
      style:  TextStyle(fontSize: 0.525*f),
      
      textAlign: TextAlign.center,
      onChanged: (value) {
        if (value.isNotEmpty) {
          _focusNode.nextFocus();
        } else {
          _focusNode.previousFocus();
        }
      },
    );
  }
}







class CountdownTimer extends StatefulWidget {
  final int duration;
  final double fontSize; 

  const CountdownTimer({super.key, required this.duration, required this.fontSize});

  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  late Timer _timer;
  int _currentDuration = 0;

  @override
  void initState() {
    super.initState();
    _currentDuration = widget.duration;
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_currentDuration <= 0) {
          _timer.cancel();
        } else {
          _currentDuration--;
        }
      });
    });
  }

  String _formatDuration(int duration) {
    int minutes = duration ~/ 60;
    int seconds = duration % 60;
    return ' ${minutes}m:${seconds.toString().padLeft(2, '0')}s';
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _formatDuration(_currentDuration),
      style: TextStyle(fontSize: widget.fontSize,
      fontWeight: FontWeight.w500,
      color: CacheData.getData(key: 'color-white-black')),
    );
  }
}

