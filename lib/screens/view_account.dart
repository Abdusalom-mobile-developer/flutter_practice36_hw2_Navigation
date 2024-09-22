import 'package:flutter/material.dart';
import 'package:flutter_practice36_hw2/screens/login_screen.dart';
import 'package:flutter_practice36_hw2/screens/view_card_screen.dart';

class ViewAccountScreen extends StatefulWidget {
  static const String id = "view_account_screen";
  const ViewAccountScreen({
    super.key,
  });

  @override
  State<ViewAccountScreen> createState() => _ViewAccountScreenState();
}

class _ViewAccountScreenState extends State<ViewAccountScreen> {
  int _currentIndex = 1;
  Widget _buttonMaker(String content, void Function()? function) {
    return Container(
        height: 80,
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 18),
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
            onPressed: function,
            child: Text(
              content,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            )));
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
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Transform.translate(
                offset: const Offset(0, -30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Account",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Hello ${LoginScreen.username}!",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              _buttonMaker("Check Account", null),
              _buttonMaker("Switch Account", null),
              _buttonMaker("Credit Card Balance", () {
                Navigator.pushNamed(context, ViewCardScreen.id);
              }),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          currentIndex: _currentIndex,
          backgroundColor: Colors.white,
          elevation: 35,
          items: const [
            BottomNavigationBarItem(
                label: "Number",
                icon: Icon(
                  Icons.phone,
                  size: 32,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
                label: "Menu",
                icon: Icon(
                  Icons.menu,
                  size: 32,
                  color: Colors.black,
                )),
            BottomNavigationBarItem(
                label: "Location",
                icon: Icon(
                  Icons.location_on,
                  size: 32,
                  color: Colors.black,
                ))
          ]),
    );
  }
}
