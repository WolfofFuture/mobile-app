import 'package:dsw_51781/utils/my_images.dart';
import 'package:dsw_51781/views/register/register_view.dart';
import 'package:dsw_51781/views/widgets/basic_sign_in.dart';
import 'package:dsw_51781/views/widgets/basic_text.dart';
import 'package:dsw_51781/views/widgets/basic_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:dsw_51781/utils/my_colors.dart';
//import 'package:dsw_51781/views/register/register_view.dart';

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
              //SingleChildScrollView(),
              const SizedBox(height: 62),
              //Spacer(flex: 32),
              Center(
                child: Image.asset(MyImages.logo),
              ),
              _signInText('Mog in'),
              //_signInText,
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
              image: Image.asset(MyImages.user),),
              BasicTextFormField(initialValue: 'Password',
              image: Image.asset(MyImages.locky),),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment(1, 0),
                  child: BasicText(text: 'Forget password?'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Basic_Sign_In(initialValue: 'Amogus',),
              ),
              Center(
                child: GestureDetector(
                    child: Text("Don't have account? Sign up!"),
                    onTap: () {
                      Navigator.push(
                        context, MaterialPageRoute(builder:
                      (context) => const Register_View())
                      );
                    }
                  //onDoubleTap: () => print('clicked twice'),
                ),
              ),
            ],
          ),
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