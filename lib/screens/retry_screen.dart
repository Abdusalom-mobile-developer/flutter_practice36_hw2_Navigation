import 'package:flutter/material.dart';
import 'package:flutter_practice36_hw2/screens/login_screen.dart';
import 'package:flutter_practice36_hw2/screens/reset_password_screen.dart';
import 'package:flutter_practice36_hw2/screens/view_account.dart';

class RetryScreen extends StatefulWidget {
  static const String id = "retry_screen";
  const RetryScreen({
    super.key,
  });

  @override
  State<RetryScreen> createState() => _RetryScreenState();
}

class _RetryScreenState extends State<RetryScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  int _attemptCount = 1;
  Widget textFieldMaker(String hintText, TextEditingController controller) {
    return Container(
      height: 55,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.18),
                blurRadius: 15,
                offset: const Offset(0, 0))
          ]),
      child: TextField(
        controller: controller,
        smartDashesType: SmartDashesType.disabled,
        style: const TextStyle(color: Colors.black, fontSize: 18),
        decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                gapPadding: BouncingScrollSimulation.maxSpringTransferVelocity),
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.black, fontSize: 18)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 60),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Image(
                image: AssetImage("assets/images/logo3.png"),
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Transform.translate(
                offset: const Offset(0, -80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Oops! Try Again",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 33,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    textFieldMaker("Username", _usernameController),
                    textFieldMaker("Password", _passwordController),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Atempt: ${_attemptCount > 3 ? 3 : _attemptCount}/3",
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        Container(
                            height: 55,
                            width: MediaQuery.of(context).size.width / 2.5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.18),
                                      blurRadius: 15,
                                      offset: const Offset(0, 0))
                                ]),
                            child: TextButton(
                                onPressed: () {
                                  if (_usernameController.text.trim() ==
                                          LoginScreen.username &&
                                      _passwordController.text.trim() ==
                                          LoginScreen.password) {
                                    Navigator.pushReplacementNamed(
                                        context, ViewAccountScreen.id);
                                  } else {
                                    setState(() {
                                      _attemptCount++;
                                      _usernameController.clear();
                                      _passwordController.clear();
                                    });
                                    if (_attemptCount > 3) {
                                      Navigator.pushReplacementNamed(
                                          context, ResetPasswordScreen.id);
                                    }
                                  }
                                },
                                child: const Text(
                                  "Try Again",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ))),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
