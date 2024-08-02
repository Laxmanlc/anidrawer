import 'package:anidrawer/mainscreen.dart';
import 'package:anidrawer/menuscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ZoomDrawerController _drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: _drawerController,
      style: DrawerStyle.defaultStyle,
      menuScreen: MenuScreen(controller: _drawerController),
      mainScreen: MainScreen(controller: _drawerController),
      borderRadius: 24.0,
      showShadow: true,
      angle: -3,
      androidCloseOnBackTap: true,
      slideWidth: MediaQuery.of(context).size.width * 0.6,
      openCurve: Curves.bounceIn,
      closeCurve: Curves.bounceIn,
      mainScreenTapClose: true,
      disableDragGesture: true,
      menuBackgroundColor: Colors.amber,
    );
  }
}
