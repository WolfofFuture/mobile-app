import 'package:dsw_51781/utils/extensions.dart';
import 'package:dsw_51781/utils/my_images.dart';
import 'package:dsw_51781/views/widgets/basic_sign_in.dart';
import 'package:dsw_51781/views/widgets/basic_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Logged_In extends StatelessWidget{
  const Logged_In({super.key});
  @override
  Widget build(BuildContext context) {
    final width = Extensions.width(context);
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            children: [
              BasicText(text: 'Zalogowany! :D'),
              Padding(
                padding: const EdgeInsets.all(80.0),
                child: Image.asset(MyImages.stick),
              ),
              Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: Basic_Sign_In(initialValue: 'Powrót',),
              ),
            ],
          ),
        ),
      ),

    ));
  }
}