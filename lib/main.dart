import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:learn/pages/home_page.dart';
import 'package:learn/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn/utils/routes.dart';
import 'package:learn/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: Mytheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: Mytheme.darkTheme(context),
      initialRoute: "/home",
      routes: {
        "/": (context) => Loginpage(),
        MyRoutes.HomeRoute: (context) => Homepage(),
        MyRoutes.LoginRoute: (context) => Loginpage(),
      },
    );
  }
}
