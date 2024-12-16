import 'package:dsw_51781/utils/extensions.dart';
import 'package:dsw_51781/utils/my_images.dart';
import 'package:dsw_51781/views/login/logged_in.dart';
import 'package:dsw_51781/views/login/login_view.dart';
import 'package:dsw_51781/views/widgets/basic_bold_text.dart';
import 'package:dsw_51781/views/widgets/basic_sign_in.dart';
import 'package:dsw_51781/views/widgets/basic_text.dart';
import 'package:dsw_51781/views/widgets/basic_text_form_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../utils/my_colors.dart';

class Register_View extends StatefulWidget {
  const Register_View({super.key});

  @override
  State<Register_View> createState() => _Register_ViewState();
}

class _Register_ViewState extends State<Register_View> {
  @override
  Widget build(BuildContext context) {
    final width = Extensions.width(context);
    return SafeArea(
      child: Scaffold(
        body:
          //width < 800 ? Placeholder() : Placeholder(color: Colors.yellow)
        SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12,top: 15),
                    child: GestureDetector(
                      child: Row(
                        children: [
                          Image.asset(MyImages.ico_back),
                          BasicText(text: 'Back!'),
                        ],),
                      onTap: () {
                        Navigator.pop(context);},),),
                  Align(
                    alignment: Alignment.topRight,
                      child: Image.asset(MyImages.Ellipse)),
                ],
              ),
              Padding(padding: const EdgeInsets.only(left: 25,top: 55),
              child: BasicBoldText(text: 'Sign Up',fontSize: 30,),),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 20),
                child: Column(
                  children: [
                    BasicTextFormField(hintText: 'Full Name', image1: Image.asset(MyImages.user),),
                    BasicTextFormField(hintText: 'Email',image1: Image.asset(MyImages.mail),),
                    BasicTextFormField(hintText: 'Password',image1: Image.asset(MyImages.locky),image2: Image.asset(MyImages.ico_eye),),
                    BasicTextFormField(hintText: 'Confirm Password',image1: Image.asset(MyImages.locky),image2: Image.asset(MyImages.ico_eye),),
                    Center(
                      child: Padding(padding: const EdgeInsets.all(15),
                      child: ElevatedButton(style: ElevatedButton.styleFrom(
                        backgroundColor:MyColors.violetColor,
                        minimumSize: const Size(double.maxFinite, 50),
                      ),onPressed: ()async{},
                          child: Text('Sign Up',style: TextStyle(
                            color: Colors.white,),)),),
                    ),
                    //Basic_Sign_In(initialValue: 'Sign Up',),
                    Padding(padding: const EdgeInsets.only(top:100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BasicText(text: "Already have an account? "),
                        GestureDetector(
                            child: BasicBoldText(text: "Sign In!"),
                            onTap: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder:
                                  (context) => const Login_View())
                              );
                            }
                          //onDoubleTap: () => print('clicked twice'),
                        ),
                      ],
                    ),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}