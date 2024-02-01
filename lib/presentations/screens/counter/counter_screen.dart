import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  static const name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
     int counterValue = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body:  Center(
        child: Text('Valor: $counterValue', style: Theme.of(context).textTheme.titleLarge,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterValue++;       
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
