import 'package:flutter/material.dart';
import 'themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'pages/login_page.dart';
import 'auth/login_or_register.dart';


void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
      )); //runApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    ); //MaterialApp
  }
}