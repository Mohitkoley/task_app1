import 'package:flutter/material.dart';

class SavedTabChild extends StatefulWidget {
  const SavedTabChild({super.key});

  @override
  State<SavedTabChild> createState() => _SavedTabChildState();
}

class _SavedTabChildState extends State<SavedTabChild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text("Saved Tab"),
    );
  }
}
