//import 'package:dsw_51781/utils/my_images.dart';
import 'package:dsw_51781/utils/my_colors.dart';
import 'package:flutter/material.dart';


class BasicTextFormField_ORG extends StatefulWidget {
  final String hintText;
  final Image? image1;
  final Image? image2;
  const BasicTextFormField_ORG({super.key,this.hintText = '',this.image1,this.image2});

  @override
  State<BasicTextFormField_ORG> createState() => _BasicTextFormField_ORGState();
}

class _BasicTextFormField_ORGState extends State<BasicTextFormField_ORG> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        decoration: InputDecoration(
          /*border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(width: 2,color: MyColors.purpleColor)*/
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





    /*final String initialValue;
  const BasicTextFormField({super.key,this.initialValue = ''});
  @override
  Widget build(BuildContext context) {

    return TextFormField(
      //initialValue: initialValue,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: initialValue,
      ),
    );
  }
}*/
    /*return Row(
      children: [
        if (image!=null)
          Padding(padding: const EdgeInsets.only(right: 8.0),
          child: image,),
        Expanded(child:
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: initialValue,
          ),
        ),)
      ],
    );*/
  }
}

