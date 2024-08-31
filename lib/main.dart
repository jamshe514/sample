import 'package:flutter/material.dart';
import 'package:sample/view/add.dart';
import 'package:sample/view/adim_user.dart';
import 'package:sample/view/admin_homeservice.dart';
import 'package:sample/view/admin_homeuser.dart';
import 'package:sample/view/admin_login.dart';
import 'package:sample/view/admin_notification.dart';
import 'package:sample/view/admin_payment.dart';
import 'package:sample/view/admin_services.dart';
import 'package:sample/view/user_login.dart';
import 'package:sample/view/user_signup.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "first",
      home:AdminLoginScreen(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}
