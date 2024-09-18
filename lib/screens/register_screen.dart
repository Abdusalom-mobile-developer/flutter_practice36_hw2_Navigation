import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  static const String id = "register_screen";
  const RegisterScreen({
    super.key,
  });

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _newEmailController = TextEditingController();
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
                      "Register with us",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 29,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    textFieldMaker("New email", _newEmailController),
                    textFieldMaker("New username", _newUsernameController),
                    textFieldMaker("New password", _newPasswordController),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
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
                                onPressed: () {},
                                child: const Text(
                                  "Register",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ))),
                      ],
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    const Text(
                        textAlign: TextAlign.end,
                        "After registration, try to login one more time.",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
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
