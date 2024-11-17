//import 'package:dsw_51781/utils/my_images.dart';
import 'package:flutter/material.dart';


class BasicTextFormField extends StatelessWidget {
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
  final String initialValue;
  final Image? image;
  const BasicTextFormField({super.key,this.initialValue = '',this.image});
  @override
  Widget build(BuildContext context) {

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
    return Padding(
      padding: const EdgeInsets.all(15.0), // Add padding to the field
      child: TextFormField(

        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: initialValue,
          prefixIcon: image != null ? Padding(
            padding: const EdgeInsets.all(15.0), // Add padding around the image
            child: image,
          ) : null, // Conditionally display the image as a prefix icon
        ),
      ),
    );
  }
}

