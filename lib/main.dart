import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/pages/homepage.dart';
import 'package:my_first_app/pages/loginpage.dart';
import 'package:my_first_app/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        // primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),

      //primaryTextTheme NOT WORKING NEEDS TO BE RESOLVED

      darkTheme: ThemeData(
        primarySwatch: Colors.cyan,
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => Loginpage(),
        MyRoutes.homeRoute: (context) => homepage(),
        MyRoutes.loginRoute: (context) => Loginpage(),
      },
    );
  }
}
