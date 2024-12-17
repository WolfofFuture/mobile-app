import 'package:dsw_51781/views/login/login_view.dart';
import 'package:dsw_51781/views/new_login/new_login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      const MaterialApp(

        title: 'Navigation Basics',

        debugShowCheckedModeBanner: false,

        home: NewLogin(),
      ),
  );
}