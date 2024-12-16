//import 'package:dsw_51781/utils/my_images.dart';
import 'package:dsw_51781/utils/my_colors.dart';
import 'package:flutter/material.dart';


class BasicTextFormField extends StatefulWidget {
  final String hintText;
  final Image? image1;
  final Image? image2;
  const BasicTextFormField({required this.hintText,this.image1,this.image2,super.key});
  @override
  State<BasicTextFormField> createState() => _BasicTextFormFieldState();}

class _BasicTextFormFieldState extends State<BasicTextFormField>{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: MyColors.violetColor,
            fontSize: 15,
          ),
          prefixIcon: widget.image1 != null ? Padding(
            padding: const EdgeInsets.all(15.0),
            child: widget.image1,) : null,
          suffixIcon: widget.image2 != null ? Padding(
            padding: const EdgeInsets.only(right: 15),
            child: widget.image2,):null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(width: 2,color: MyColors.purpleColor),
          ),
        ),
      ),
    );
  }
}

