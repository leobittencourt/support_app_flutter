import 'package:flutter/material.dart';
import 'package:support_app_flutter/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SupportApp',
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
