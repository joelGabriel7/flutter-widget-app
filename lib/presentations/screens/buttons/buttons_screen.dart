import 'package:flutter/material.dart';

class ButtonScreens extends StatelessWidget {

  static const name = 'buttons_screen';
  const ButtonScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screens"),
      ),
      body: const Placeholder(),
    );
  }
}