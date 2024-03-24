import 'package:flutter/material.dart';
import 'package:fooddev/components/my_drawer_title.dart';
import 'package:fooddev/pages/Settings.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 40,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrawerTitle(
            text: 'H O M E',
            icon: Icons.home_filled,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          MyDrawerTitle(
            text: 'S E T T I N G',
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const Settings())));
            },
          ),

          const Spacer(),
          MyDrawerTitle(
            text: 'L O G O U T',
            icon: Icons.logout,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
