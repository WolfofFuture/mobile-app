import 'package:dsw_51781/utils/my_colors.dart';
import 'package:flutter/material.dart';

class TitleScreen extends StatelessWidget {
  final String title;
  const TitleScreen({ required this.title,super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: MyColors.violetColor,
      ),
    );
  }
}
