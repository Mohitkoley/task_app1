import 'package:flutter/material.dart';
import 'package:task1/extension.dart';
import 'package:task1/screens/margh/margh_home_screen.dart';
import 'package:task1/screens/splitify/splitify_screen.dart';

class ScreenListScreen extends StatefulWidget {
  const ScreenListScreen({super.key});

  @override
  State<ScreenListScreen> createState() => _ScreenListScreenState();
}

class _ScreenListScreenState extends State<ScreenListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return SplitifyHomeScreen();
                  }));
                },
                child: Text("splitify")),
            50.hBox,
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return MarghHomeScreen();
                  }));
                },
                child: Text("margh"))
          ],
        ),
      )),
    );
  }
}
