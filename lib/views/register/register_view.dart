import 'package:dsw_51781/utils/extensions.dart';
import 'package:dsw_51781/utils/my_images.dart';
import 'package:dsw_51781/views/widgets/basic_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Register_View extends StatelessWidget {
  const Register_View({super.key});

  @override
  Widget build(BuildContext context) {
    final width = Extensions.width(context);
    return Scaffold(

      body:
        //width < 800 ? Placeholder() : Placeholder(color: Colors.yellow)
      /*Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),*/
      GestureDetector(
        child: Row(
          children: [
            Image.asset(MyImages.ico_back),
            BasicText(text: 'Go back!'),

          ],
        ),
        onTap: () {
          Navigator.pop(context);
        },
      )
    );
  }
}