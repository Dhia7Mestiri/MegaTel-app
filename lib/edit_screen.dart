import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mega/cache/global.dart';
import 'package:mega/cache/language.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

 TextEditingController _fullNameController = TextEditingController(text: 'Dhia El Ayeb');
  TextEditingController _companyNameController = TextEditingController(text: 'isima');
  TextEditingController _emailController = TextEditingController(text: 'Dhia123@gmail.com');
  TextEditingController _phoneNumberController = TextEditingController(text: '12345678');
  TextEditingController _dobController = TextEditingController(text: '23/05/2005');
  TextEditingController _countryController = TextEditingController(text: 'Tunisia');
class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {

final w=MediaQuery.of(context).size.width*0.8;
final h=MediaQuery.of(context).size.height;
final f=w*0.11;


    void updateText(String newText, TextEditingController controller) {
    setState(() {
      controller.text = newText;
    });
  }

    
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
              resizeToAvoidBottomInset: true,
              backgroundColor: Colors.transparent,
              
              body: Stack(
                children: [
                  
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
                                      Text(
                                      "${lang['edit_text1']}",
                                      style: TextStyle(
                                        color: CacheData.getData(key: 'color-white-black'),
                                        fontSize: 0.553*f,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                    
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0.09115 *w, 0, 0.10634 *w, 0),
                                      
                                        width: 0.10026 *w,
                                        height: 0.10026 *w,
                                        
                                      
                                    ),
                                   
                                    ],
                                  ),
                                ),
                                ProfileImage(),
                                SizedBox(height: 0.00711 *h,),
                                
                                SizedBox(height: 0.02964 *h,),
                                 InformationWidget("${lang['edit_text2']}", _fullNameController, updateText),
                            SizedBox(height: 0.01423 *h,),
                            InformationWidget("${lang['edit_text3']}", _companyNameController, updateText),
                            SizedBox(height: 0.01423 *h,),
                            InformationWidget("${lang['edit_text4']}", _emailController, updateText),
                            SizedBox(height: 0.01423 *h,),
                            InformationWidget("${lang['edit_text5']}", _phoneNumberController, updateText),
                            SizedBox(height: 0.01423 *h,),
                            InformationWidget("${lang['edit_text6']}", _dobController, updateText),
                            SizedBox(height: 0.01423 *h,),
                            InformationWidget("${lang['edit_text7']}",_countryController, updateText),
                            SizedBox(height: 0.01778 *h,),
                                
                        
                                
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
                                          "${lang['edit_text8']}",
                                          style: TextStyle(
                                            fontSize: f*0.552,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
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
      width:  0.3737 *w,
      height:  0.3737 *w,
      
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
        left: 0.03239 *w,
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

       
class InformationWidget extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  final Function(String, TextEditingController) onUpdate;

  InformationWidget(this.title, this.controller, this.onUpdate);

  @override
  _InformationWidgetState createState() => _InformationWidgetState();
}

class _InformationWidgetState extends State<InformationWidget> {
  bool _isEditing = true;
  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
      });
    });
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
    return Container(
      width: 1.03907 *w,
      height: 0.24306 *w,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Text(
              widget.title,
              textAlign: TextAlign.left,
               style: TextStyle(
                color: CacheData.getData(key: 'color-white-black'),
                fontFamily: 'Poppins',
                fontSize: 0.44192 *f,
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
                height: 0.00178 *h,
              ),
            ),
          ),
          Positioned(
            top: 0.03557 *h,
            left: 0,
            child: Container(
              width: 1.03907 *w,
              height: 0.13368 *w,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 1.03907 *w,
                      height: 0.13368 *w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color.fromRGBO(241, 244, 255, 1),
                        border: Border.all(
                          color: Color.fromRGBO(241, 244, 255, 1),
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -0.00237 *h,
                    left: 0.05469 *w,
                    child: SizedBox(
                      width: 0.91147 *w,
                      child: TextField(
                        enabled: _isEditing,
                        controller: widget.controller,
                        focusNode: _focusNode,
                        
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Color.fromRGBO(83, 76, 76, 1),
                          fontSize: 0.38668 *f,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w500,
                          height: 0.00178 *h,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -0.005969 *h,
                    left: 0.8707 *w,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          _isEditing = true;
                        });
                        _focusNode.requestFocus();
                        
                      },
                      child: Image.asset(
                        'images/pen.png',
                        width: 0.05469 *w,
                        height: 0.06614 *w,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}