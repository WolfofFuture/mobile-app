import 'package:dsw_51781/utils/my_images.dart';
import 'package:dsw_51781/views/home/home.dart';
import 'package:dsw_51781/views/register/register_view.dart';
import 'package:dsw_51781/views/widgets/basic_bold_text.dart';
import 'package:dsw_51781/views/widgets/basic_text.dart';
import 'package:dsw_51781/views/widgets/basic_text_form_field.dart';
import 'package:dsw_51781/views/widgets/basic_text_form_field_original.dart';
import 'package:flutter/material.dart';
import 'package:dsw_51781/utils/my_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NewLogin extends StatefulWidget {
  const NewLogin({super.key});
  @override
  State<NewLogin> createState() => _NewLogin();
}

class _NewLogin extends State<NewLogin> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwdController = TextEditingController();
  final String correctEmail = "test";
  final String correctPassword = "test";
  bool validated = false;


  void loginValidation() async {
    setState(() {
      validated = true;
    });
    if (passwdController.text.isEmpty || emailController.text.isEmpty){
      showDialog(context: context,
          builder: (BuildContext context){
        return AlertDialog(
          title: const Text("Error!"),
          content: const Text("Fields cannot be empty"),
          actions: <Widget>[
            TextButton(
            onPressed: () => Navigator.pop(context,"OK"),
            child: const Text("OK"))
          ],
        );
          }
      );
      return;
    }
    if (correctPassword == passwdController.text &&
        correctEmail == emailController.text) {
      await saveData();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Incorrect email or password'),
            content: const Text('Please enter correct email or password'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  Future<void> saveData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 62),
            GestureDetector(
              child: Center(
                child: Image.asset(MyImages.logo),
              ),
              onDoubleTap: () => print('New Login'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: BasicBoldText(text: 'Sign in', fontSize: 30),
            ),
            BasicTextFormField_ORG(
                hintText: 'E-mail',
                image1: Image.asset(MyImages.user),
                controller: emailController,),
            BasicTextFormField(
                hintText: 'Password',
                controller: passwdController,
                isPasswordField: true,
                image1: Image.asset(MyImages.locky),
                image2: Image.asset(MyImages.ico_eye)),
            Padding(
              padding: const EdgeInsets.only(right: 15, top: 15),
              child: Align(
                alignment: Alignment(1, 0),
                child: BasicBoldText(
                  text: 'Forget password?',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.violetColor,
                    minimumSize: const Size(double.maxFinite, 50),
                  ),
                  child: Text(
                    "Sign in",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    loginValidation();
                  },
                ),
              ),
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
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Register_View()));
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
