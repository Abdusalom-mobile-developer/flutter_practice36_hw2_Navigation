import 'package:flutter/material.dart';

class ViewAccount extends StatefulWidget {
  static const String id = "view_account_screen";
  const ViewAccount({
    super.key,
  });

  @override
  State<ViewAccount> createState() => _ViewAccountState();
}

class _ViewAccountState extends State<ViewAccount> {
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
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Transform.translate(
                offset: const Offset(0, -30),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Account",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 38,
              ),
              Container(
                  height: 90,
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 15),
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
                        "Check Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ))),
              Container(
                  height: 90,
                  width: double.infinity,
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
                      child: const Text(
                        "Switch Account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ))),
              Container(
                  height: 90,
                  width: double.infinity,
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
                      child: const Text(
                        "Credit Card Balance",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
