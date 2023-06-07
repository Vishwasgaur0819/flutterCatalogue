import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utills/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // int days = 30;

    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      // darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          // primaryTextTheme: GoogleFonts.latoTextTheme()
          fontFamily: GoogleFonts.lato().fontFamily),

      initialRoute: AppRoutes.homeRoute,
      routes: {
        '/': (context) => const LoginPage(),
        AppRoutes.homeRoute: (context) => const HomePage(),
        AppRoutes.loginRoute: (context) => const LoginPage(),
      },
    );
  }
}
