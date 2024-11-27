import 'package:dsw_51781/utils/my_images.dart';
import 'package:dsw_51781/views/register/register_view.dart';
import 'package:dsw_51781/views/widgets/basic_bold_text.dart';
import 'package:dsw_51781/views/widgets/basic_sign_in.dart';
import 'package:dsw_51781/views/widgets/basic_text.dart';
import 'package:dsw_51781/views/widgets/basic_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:dsw_51781/utils/my_colors.dart';
import 'package:dsw_51781/views/register/register_view.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Login_View extends StatefulWidget {
  const Login_View({super.key});

  @override
  State<Login_View> createState() => _Login_ViewState();
}

class _Login_ViewState extends State<Login_View> {
  /*late final AppLifecycleListener _listener;
  String _currentState = '';
  @override
  void initState(){
    super.initState();
    _listener = AppLifecycleListener(
      onDetach: _onDetach,
      onHide: _onHide,
      onInactive: _onInactive,
      onPause: _onPause,
      onRestart: _onRestart,
      onResume: _onResume,
      onShow: _onShow,
    );
  }
  @override
  void dispose(){
    super.dispose();
    _listener.dispose();
  }
  void _onDetach(){
    print('onDetach');
    _currentState = 'onDetach';
  }
  void _onHide(){
    print('onHide');
    _currentState = 'onHide';
  }
  void _onInactive(){
    print('onInactive');
    _currentState = 'onInactive';
  }
  void _onPause(){
    print('onPause');
    _currentState = 'onPause';
  }
  void _onRestart(){
    print('onRestart');
    _currentState = 'onRestart';
  }
  void _onResume(){
    print('onResume');
    _currentState = 'onResume';
  }
  void _onShow(){
    print('onShow');
    _currentState = 'onShow';
  }*/
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
              BasicTextFormField(initialValue: 'E-mail or User Name',
              image1: Image.asset(MyImages.user),),
              BasicTextFormField(initialValue: 'Password',
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
