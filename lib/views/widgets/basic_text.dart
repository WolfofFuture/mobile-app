import 'package:flutter/material.dart';
import 'package:dsw_51781/utils/my_colors.dart';
import '../register/register_view.dart';

class BasicText extends StatelessWidget{
  final String text;
  const BasicText({Key? key, required this.text}):
      super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

 