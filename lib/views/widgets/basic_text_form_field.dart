//import 'package:dsw_51781/utils/my_images.dart';
import 'package:dsw_51781/utils/my_colors.dart';
import 'package:flutter/material.dart';

import '../../utils/my_images.dart';


class BasicTextFormField extends StatefulWidget {
  final String hintText;
  final Image? image1;
  final Image? image2;
  final bool isPasswordField;
  const BasicTextFormField({required this.hintText,
    this.image1,this.image2,
    this.isPasswordField = false,
    super.key});
  @override
  State<BasicTextFormField> createState() => _BasicTextFormFieldState();}

class _BasicTextFormFieldState extends State<BasicTextFormField>{
  var _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        obscureText: !_isPasswordVisible,
        decoration: InputDecoration(
          labelText: widget.hintText,
          labelStyle: TextStyle(
            color: MyColors.violetColor,
            fontSize: 15,
          ),
           border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(width: 2,color: MyColors.purpleColor),
    ),
          prefixIcon: widget.image1 != null ? Padding(
            padding: const EdgeInsets.all(15.0),
            child: widget.image1,) : null,
          suffixIcon: widget.isPasswordField 
              ? GestureDetector(
        onTap: (){
          setState(() {
            _isPasswordVisible = !_isPasswordVisible;
          });
        },
        child: _suffixIcon(_isPasswordVisible),
          )
              : null,
        )
        ),
      );
  }
}

Widget? _suffixIcon( bool isPasswordVisible){
  return isPasswordVisible
      ? Icon(
    Icons.visibility, color: MyColors.blackColor,
  )
      : Icon(
      Icons.visibility_off_outlined,
      color: MyColors.blackColor
  );

}