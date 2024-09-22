import 'package:flutter/material.dart';
import 'package:flutter_practice36_hw2/screens/login_screen.dart';

class ResetPasswordVerifiedScreen extends StatefulWidget {
  static const String id = "reset_password_verified_screen";
  const ResetPasswordVerifiedScreen({
    super.key,
  });

  @override
  State<ResetPasswordVerifiedScreen> createState() =>
      _ResetPasswordVerifiedScreenState();
}

class _ResetPasswordVerifiedScreenState
    extends State<ResetPasswordVerifiedScreen> {
  bool _hasError = false;
  final TextEditingController _newUsernameController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();

  Widget textFieldMaker(String hintText, TextEditingController controller) {
    return Container(
      height: 55,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
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
        margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 0),
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
                      "Password Reset",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 29,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width / 3.4,
                      width: MediaQuery.of(context).size.width / 3.4,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 3),
                      ),
                      child: Icon(
                        Icons.check_rounded,
                        size: MediaQuery.of(context).size.width / 4.7,
                      ),
                    ),
                    const Text(
                      "Verified",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    textFieldMaker("New username", _newUsernameController),
                    textFieldMaker("New password", _newPasswordController),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                                textAlign: TextAlign.end,
                                _hasError ? "Try Again" : "",
                                style: TextStyle(
                                    color: Colors.red[900],
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(
                              width: 3,
                            ),
                            _hasError
                                ? Icon(
                                    Icons.error_outline_rounded,
                                    color: Colors.red[900],
                                    size: 27,
                                  )
                                : const Icon(
                                    Icons.percent,
                                    color: Colors.transparent,
                                  )
                          ],
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
                                  if (_newUsernameController.text
                                              .trim()
                                              .length >
                                          7 &&
                                      _newPasswordController.text
                                              .trim()
                                              .length >
                                          6) {
                                    setState(() {
                                      _hasError = false;
                                    });

                                    LoginScreen.username =
                                        _newUsernameController.text.trim();
                                    LoginScreen.password =
                                        _newPasswordController.text.trim();
                                    Navigator.pushReplacementNamed(
                                        context, LoginScreen.id);
                                  } else {
                                    setState(() {
                                      _hasError = true;
                                      _newUsernameController.clear();
                                      _newPasswordController.clear();
                                    });
                                  }
                                },
                                child: const Text(
                                  "Login",
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
