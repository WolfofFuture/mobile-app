import 'package:dsw_51781/utils/my_images.dart';
import 'package:dsw_51781/views/widgets/basic_sign_in.dart';
import 'package:dsw_51781/views/widgets/basic_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:dsw_51781/utils/my_colors.dart';
//import 'package:dsw_51781/views/register/register_view.dart';

class Login_View extends StatelessWidget {
  const Login_View({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 62),
            Center(
              child: Image.asset(MyImages.logo),
            ),
            _signInText('Mog in'),
            //_signInText,
            GestureDetector(
              child: const Text("Don't have account? Sign up!"),
              onTap: () {
               print('xxx');}
                //onDoubleTap: () => print('clicked twice'),
            ),
            /*
            VER 1 !TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'E-mail'
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password'
              ),
            ),
            VER 2 !Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
              ),
            ),
            VER 3 !Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const BasicTextFormField(initialValue: 'E-mail',),
                  const BasicTextFormField(initialValue: 'Password',),
                ],
              ),
            ),*/
            BasicTextFormField(initialValue: 'E-mail or User Name',
            image: Image.asset('assets/images/user.png'),),
            BasicTextFormField(initialValue: 'Password',
            image: Image.asset('assets/images/lock.png'),),
            /*Center(
              child: ElevatedButton(

                child: const Text('Sign in'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Register_View()),
                  );
                },
              ),
            ),*/
            Basic_Sign_In(initialValue: 'Amogus',)
          ],
        ),
      ),
    );
  }
}
//Widget get _signInText(){
Widget _signInText(String text){
  return Text(
      text,
      //'Sign in',
      style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: MyColors.purpleColor,
      ),
  );
}