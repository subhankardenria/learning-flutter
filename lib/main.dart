import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key); // if we are not doing anything with the constructor, we can remove remove it
  // int days = 30;
  // double pi = 3.14;
  // String name = "Subhankar";
  // bool isMale = true;
  // num temp = 30.5; // we can assign any number (int or double)
  // var day = "Sunday"; // we can assign a string , number or any type of data compiler will automatically identify that.

  // static const pi_value = 3.14; // we can't change the value of this variable
  // final names = ['Subhankar', 'Nitu']; // It is similar to constant but we can add more values

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),

      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage()
      },
    );
  }
}
