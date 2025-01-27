import 'package:flutter/material.dart';
import 'package:dsw_51781/utils/my_colors.dart';
import '../register/register_view.dart';

class Log_In_Site extends StatelessWidget{
  final String initialValue;
  final Color? backgroundColor;
  const Log_In_Site({super.key, this.initialValue = '',this.backgroundColor});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:MyColors.violetColor,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: Text(initialValue,
                      style: TextStyle(
                          color: Colors.white),),
                    onPressed:(){
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context)=>  Register_View()));
                    }
                    ,),
                ),
              ],
            )
        )
    );
  }
}