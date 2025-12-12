import 'package:flexihome/Design/Authentication/Secretary/Sec_otp.dart';
import 'package:flexihome/Design/Authentication/Secretary/Secretary_login.dart';
import 'package:flexihome/Design/Authentication/User/Otp_screen.dart';
import 'package:flexihome/Design/Authentication/User/account_type_selection_screen.dart';
import 'package:flexihome/Design/Authentication/User/login.dart';
import 'package:flexihome/Design/Authentication/User/registration.dart';
import 'package:flexihome/Design/Home/Dashboard.dart';
import 'package:flexihome/Design/OnboardingScreen/OnboardPage.dart';
import 'package:flexihome/Design/Profile/Userprofile.dart';
import 'package:flexihome/Design/Society%20Registration/Society_otp.dart';
import 'package:flexihome/Design/Society%20Registration/Society_reg.dart';
import 'package:flexihome/Design/Society%20Registration/approved.dart';
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
      home: Userprofile(),
      routes:{
        '/onboardpage': (context) => OnboardPage(),
        '/select': (context) => AccountTypeSelectionScreen(),
        '/login': (context) => LoginScreen(),
        '/create': (context) => RegistrationScreen(),
        '/otp':(context)=> OtpScreen(),
        '/secretary':(context)=> SecretaryLogin(),
        '/secotp':(context)=> SecOtp(),
        '/socirtyOtp':(context)=> SocietyOtp(),
        '/societyreg':(context)=> RegisterSocietyScreen(),
        '/approved':(context)=> ApprovedScreen(),
        '/dash':(context)=> Dashboard()
      }
    );
  }
}
