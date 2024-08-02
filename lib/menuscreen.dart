import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MenuScreen extends StatelessWidget {
  final ZoomDrawerController controller;

  const MenuScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 4, 193),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 40.0),
            const Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    'https://static.vecteezy.com/system/resources/thumbnails/031/542/476/small_2x/beautiful-asian-girl-in-fashionable-outfit-ai-generative-photo.jpg'),
              ),
            ),
            const SizedBox(height: 20.0),
            drawerItem(context, Icons.home, 'Home', () {
              controller.close?.call();
            }),
            drawerItem(context, Icons.settings, 'Settings', () {
              controller.close?.call();
              // Navigate to settings screen
            }),
            drawerItem(context, Icons.info, 'About Us', () {
              controller.close?.call();
              // Navigate to about us screen
            }),
            drawerItem(context, Icons.policy, 'Policy', () {
              controller.close?.call();
              // Navigate to policy screen
            }),
          ],
        ),
      ),
    );
  }

  Widget drawerItem(
      BuildContext context, IconData icon, String title, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: <Widget>[
            Icon(icon, color: Colors.white, size: 30.0),
            const SizedBox(width: 10.0),
            Text(title,
                style: const TextStyle(color: Colors.white, fontSize: 18.0)),
          ],
        ),
      ),
    );
  }
}
