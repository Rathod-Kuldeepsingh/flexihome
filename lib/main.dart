import 'package:flexihome/Design/Authentication/account_type_selection_screen.dart';
import 'package:flexihome/Design/Authentication/login.dart';
import 'package:flexihome/Design/Authentication/registration.dart';
import 'package:flexihome/Design/OnboardingScreen/OnboardPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardPage(),
      routes:{
        '/onboardpage': (context) => OnboardPage(),
        '/select': (context) => AccountTypeSelectionScreen(),
        '/create': (context) => RegistrationScreen()
      }
    );
  }
}
