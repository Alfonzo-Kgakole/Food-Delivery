import 'package:flutter/material.dart';
import 'package:fooddev/pages/loginPage.dart';
import 'package:fooddev/pages/registorPage.dart';

class LoginRegistor extends StatefulWidget {
  const LoginRegistor({super.key});

  @override
  State<LoginRegistor> createState() => _LoginRegistorState();
}

class _LoginRegistorState extends State<LoginRegistor> {
  //initially show a login page
  bool showLoginPage = true;

  //toggle between login and registor
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages);
    } else {
      return Registor(onTap: togglePages);
    }
  }
}
