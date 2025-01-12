import 'package:dsw_51781/utils/my_images.dart';
import 'package:dsw_51781/utils/my_strings.dart';
import 'package:dsw_51781/views/home/home.dart';
import 'package:dsw_51781/views/register/register_view.dart';
import 'package:dsw_51781/views/widgets/basic_bold_text.dart';
import 'package:dsw_51781/views/widgets/basic_sign_in.dart';
import 'package:dsw_51781/views/widgets/basic_text.dart';
import 'package:dsw_51781/views/widgets/basic_text_form_field.dart';
import 'package:dsw_51781/views/widgets/basic_text_form_field_original.dart';
import 'package:dsw_51781/views/widgets/title_screen.dart';
import 'package:flutter/material.dart';
import 'package:dsw_51781/utils/my_colors.dart';
import 'package:dsw_51781/views/register/register_view.dart';
import 'package:shared_preferences/shared_preferences.dart';


class NewLogin extends StatefulWidget {
  const NewLogin({super.key});

  @override
  State<NewLogin> createState() => _NewLogin();
}

class _NewLogin extends State<NewLogin> {
  @override
  Widget build(BuildContext context) {
    var boolValue = false;
    return SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 62),
              //Spacer(flex: 32),
              Center(
                child: Image.asset(MyImages.logo),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: BasicBoldText(text: 'Sign in',fontSize: 30,),
              ),
              BasicTextFormField_ORG(hintText: 'E-mail or User Name',
                image1: Image.asset(MyImages.user),),
              BasicTextFormField(hintText: 'Password', isPasswordField:true,
                image1: Image.asset(MyImages.locky), image2: Image.asset(MyImages.ico_eye),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15,top: 15),
                child: Align(
                  alignment: Alignment(1, 0),
                  child: BasicBoldText(text: 'Forget password?',),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Basic_Sign_In(initialValue: 'Sign in',),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 190),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BasicText(text: "Don't have account? "),
                    GestureDetector(
                        child: BasicBoldText(text: "Sign up!"),
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder:
                              (context) => const Register_View())
                          );
                        }
                      //onDoubleTap: () => print('clicked twice'),
                    ),
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
  /*Widget build(BuildContext context) {
    var boolValue = false;
    return SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 62),
              //Spacer(flex: 32),
              Center(
                child: Image.asset(MyImages.logo),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: BasicBoldText(text: 'Sign in',fontSize: 30,),
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const SizedBox(height: 35,),
                  TitleScreen(title: MyStrings.hello),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: MyColors.violetColor
                    ),
                  )
                ],
              ),),
              Padding(
                padding: const EdgeInsets.only(right: 15,top: 15),
                child: Align(
                  alignment: Alignment(1, 0),
                  child: BasicBoldText(text: 'Forget password?',),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Basic_Sign_In(initialValue: 'Sign in',),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 190),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BasicText(text: "Don't have account? "),
                    GestureDetector(
                        child: BasicBoldText(text: "Sign up!"),
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder:
                              (context) => const Register_View())
                          );
                        }
                      //onDoubleTap: () => print('clicked twice'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/
