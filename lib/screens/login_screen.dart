import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = "login_screen";
  const LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
                offset: const Offset(0, -40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    textFieldMaker("Username", _usernameController),
                    textFieldMaker("Password", _passwordController),
                    Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width / 2.5,
                        margin: const EdgeInsets.only(bottom: 25),
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
                            onPressed: () {},
                            child: Text(
                              "Login",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )))
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
