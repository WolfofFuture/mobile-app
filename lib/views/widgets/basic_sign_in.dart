import 'package:dsw_51781/views/login/logged_in.dart';
import 'package:flutter/material.dart';
import 'package:dsw_51781/utils/my_colors.dart';
import '../register/register_view.dart';

class Basic_Sign_In extends StatelessWidget{
  final String initialValue;
  final Color? backgroundColor;
  const Basic_Sign_In({super.key, this.initialValue = '',this.backgroundColor});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                backgroundColor:MyColors.violetColor,
                    minimumSize: const Size(double.maxFinite, 50),
                          ),
                  child: Text(initialValue,
                  style: TextStyle(
                    color: Colors.white),),
                    onPressed:
                        (){
                    Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context)=>  Logged_In()));
                }
                ,),
              ),
            ],
          )
        )
    );
  }
}