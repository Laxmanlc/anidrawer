import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MainScreen extends StatelessWidget {
  final ZoomDrawerController controller;

  const MainScreen({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            controller.toggle?.call();
          },
        ),
      ),
      body: const Center(
        child: Text('Main Screen Content'),
      ),
    );
  }
}
