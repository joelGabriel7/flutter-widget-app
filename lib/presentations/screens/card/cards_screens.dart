import 'package:flutter/material.dart';

class CardScreens extends StatelessWidget {
  static const name = 'cards_screen';
  
  const CardScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards Screens"),
      ),
      body: const Placeholder(),
    );
  }
}