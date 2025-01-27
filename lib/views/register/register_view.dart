import 'package:dsw_51781/utils/extensions.dart';
import 'package:dsw_51781/utils/my_images.dart';
import 'package:dsw_51781/views/new_login/new_login.dart';
import 'package:dsw_51781/views/widgets/basic_bold_text.dart';
import 'package:dsw_51781/views/widgets/basic_sign_in.dart';
import 'package:dsw_51781/views/widgets/basic_text.dart';
import 'package:dsw_51781/views/widgets/basic_text_form_field_false.dart';
import 'package:dsw_51781/views/widgets/basic_text_form_field_original_false.dart';
import 'package:flutter/material.dart';
import '../../utils/my_colors.dart';

class Register_View extends StatefulWidget {
  const Register_View({super.key});
  @override
  State<Register_View> createState() => _Register_ViewState();}

class _Register_ViewState extends State<Register_View> {
  @override
  Widget build(BuildContext context) {
    final width = Extensions.width(context);
    return Scaffold(
      body: SingleChildScrollView(
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
                  BasicTextFormField_ORG_FALSE(hintText: 'Full Name', image1: Image.asset(MyImages.user),),
                  BasicTextFormField_ORG_FALSE(hintText: 'Email',image1: Image.asset(MyImages.mail),),
                  BasicTextFormFieldFalse(hintText: 'Password',isPasswordField:true,
                    image1: Image.asset(MyImages.locky),),
                  BasicTextFormFieldFalse(hintText: 'Confirm Password',isPasswordField:true,
                    image1: Image.asset(MyImages.locky),),
                  Center(
                    child: Padding(padding: const EdgeInsets.all(15),
                    child: Basic_Sign_In(initialValue: 'Sign Up'),),
                  ),
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
                                (context) => const NewLogin())
                            );
                          }
                      ),
                    ],
                  ),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}