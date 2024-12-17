import 'dart:io';

import 'package:dsw_51781/utils/extensions.dart';
import 'package:dsw_51781/utils/my_colors.dart';
import 'package:dsw_51781/utils/my_images.dart';
import 'package:dsw_51781/views/widgets/basic_log_in_site.dart';
import 'package:dsw_51781/views/widgets/basic_sign_in.dart';
import 'package:dsw_51781/views/widgets/basic_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Home extends StatefulWidget{
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();}
class _HomeState extends State<Home>{
  @override
  void initState(){
    super.initState();
    if (kIsWeb){
      print('Web');
    } else if (Platform.isAndroid){
      print('Android');
    } else {
      print('Another');
    }
  }
  @override
  Widget build(BuildContext context){
    return kIsWeb ? Placeholder() : Placeholder(color: MyColors.violetColor,);
  }
}