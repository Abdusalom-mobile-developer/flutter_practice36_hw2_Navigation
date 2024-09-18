import 'package:flutter/material.dart';
import 'package:flutter_practice36_hw2/screens/login_screen.dart';
import 'package:flutter_practice36_hw2/screens/re_enter_email_screen.dart';
import 'package:flutter_practice36_hw2/screens/register_screen.dart';
import 'package:flutter_practice36_hw2/screens/reset_password_screen.dart';
import 'package:flutter_practice36_hw2/screens/reset_password_verified_screen.dart';
import 'package:flutter_practice36_hw2/screens/retry_screen.dart';
import 'package:flutter_practice36_hw2/screens/view_account.dart';
import 'package:flutter_practice36_hw2/screens/view_card_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RegisterScreen(),
      routes: {
        LoginScreen.id: (context) => const LoginScreen(),
        RetryScreen.id: (context) => const RetryScreen(),
        ViewAccountScreen.id: (context) => const ViewAccountScreen(),
        ViewCardScreen.id: (context) => const ViewCardScreen(),
        ResetPasswordScreen.id: (context) => const ResetPasswordScreen(),
        ResetPasswordVerifiedScreen.id: (context) =>
            const ResetPasswordVerifiedScreen(),
        ReEnterEmailScreen.id: (context) => const ReEnterEmailScreen(),
        RegisterScreen.id: (context) => const RegisterScreen(),
      },
    );
  }
}
