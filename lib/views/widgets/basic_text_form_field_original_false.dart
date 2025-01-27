import 'package:dsw_51781/utils/my_colors.dart';
import 'package:flutter/material.dart';
class BasicTextFormField_ORG_FALSE extends StatefulWidget {
  final String hintText;
  final Image? image1;
  final Image? image2;
  const BasicTextFormField_ORG_FALSE({super.key,this.hintText = '',this.image1,this.image2,});

  @override
  State<BasicTextFormField_ORG_FALSE> createState() => _BasicTextFormField_ORG_FALSEState();}

class _BasicTextFormField_ORG_FALSEState extends State<BasicTextFormField_ORG_FALSE> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: widget.hintText,
          labelStyle: TextStyle(color: MyColors.violetColor),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 2,color: MyColors.purpleColor),
            borderRadius: BorderRadius.circular(20),

          ),
          prefixIcon: widget.image1 != null ? Padding(
            padding: const EdgeInsets.all(15.0),
            child: widget.image1,) : null,
          suffixIcon: widget.image2 != null ? Padding(
              padding: const EdgeInsets.only(right: 15),
              child: widget.image2,):null,
        ),
      ),
    );
  }
}