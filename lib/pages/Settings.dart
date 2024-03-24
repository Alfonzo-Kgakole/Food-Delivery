import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text(
          "Settings",
        ),
      ),
      body: Column(
        children: [
          Text(
            "Dark Mode",
            style:
                TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
          ),
          CupertinoSwitch(
            value: false, 
            onChanged: (value) {}
            )
        ],
      ),
    );
  }
}
