import 'package:flutter/material.dart';
import 'package:fooddev/auth/login_signin.dart';
import 'package:fooddev/theme/themeProvider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context) => ThemeProvider(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Dev',
      theme: Provider.of<ThemeProvider>(context).themeData,
      home:  const LoginRegistor(),
    );
  }
}
