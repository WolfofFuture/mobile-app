import 'package:dsw_51781/utils/extensions.dart';
import 'package:dsw_51781/utils/my_images.dart';
import 'package:dsw_51781/views/widgets/basic_bold_text.dart';
import 'package:dsw_51781/views/widgets/basic_text.dart';
import 'package:dsw_51781/views/widgets/basic_text_form_field.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Register_View extends StatelessWidget {
  const Register_View({super.key});

  @override
  Widget build(BuildContext context) {
    final width = Extensions.width(context);
    return SafeArea(
      child: Scaffold(

        body:
          //width < 800 ? Placeholder() : Placeholder(color: Colors.yellow)
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12,top: 60),
                child: GestureDetector(
                  child: Row(
                    children: [
                      Image.asset(MyImages.ico_back),
                      BasicText(text: 'Go back!'),
                    ],),
                  onTap: () {
                    Navigator.pop(context);},),),
              Padding(padding: const EdgeInsets.only(left: 28,top: 101),
              child: BasicBoldText(text: 'Sign Up',fontSize: 30,),),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 46),
                child: Column(
                  children: [//Spacer(flex: 2),
                    BasicTextFormField(initialValue: 'Full Name', image: Image.asset(MyImages.user),),
                    BasicTextFormField(initialValue: 'Email',image: Image.asset(MyImages.mail),),
                    BasicTextFormField(initialValue: 'Password',image: Image.asset(MyImages.locky),),
                    BasicTextFormField(initialValue: 'Confirm Password',image: Image.asset(MyImages.locky),),
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