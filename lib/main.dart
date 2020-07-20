import 'package:flutter/material.dart';
import 'package:login_ui/loginpage.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'IndianInnovation',
     theme: ThemeData(
       fontFamily: 'Courier-Prime',
       primarySwatch: Colors.red,
     ),
     home: LoginPage(),
   );
  }

}