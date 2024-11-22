//import 'package:dsw_51781/utils/my_images.dart';
import 'package:dsw_51781/utils/my_colors.dart';
import 'package:flutter/material.dart';


class BasicTextFormField extends StatelessWidget {
  final String initialValue;
  final Image? image;
  const BasicTextFormField({super.key,this.initialValue = '',this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(

        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: MyColors.purpleColor,width: 60)
          ),
          labelText: initialValue,
          prefixIcon: image != null ? Padding(
            padding: const EdgeInsets.all(15.0),
            child: image,) : null,
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

