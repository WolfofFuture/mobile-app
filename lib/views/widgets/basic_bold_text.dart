import 'package:flutter/material.dart';
import 'package:dsw_51781/utils/my_colors.dart';
import '../register/register_view.dart';

class BasicText extends StatelessWidget{
 // final Font1 initialValue;
  final String text;
  const BasicText({Key? key, required this.text, /*this.initialValue=''*/}):
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
   //         fontSize: initialValue,
            color: MyColors.purpleColor
        ));
  }
}
