import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonScreens extends StatelessWidget {
  static const name = 'buttons_screen';
  const ButtonScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screens"),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            context.pop();
          }),
    );
  }
}

class _ButtonsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

  final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child:  const Text('Elevated button')),
            const ElevatedButton(onPressed: null, child:  Text('Elevated disabled')),
            ElevatedButton.icon(
              onPressed: () {}, 
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('Elevated icon')
            ),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.icon(onPressed: () {}, icon: const Icon(Icons.access_time), label: const Text('Fille button')),

            OutlinedButton(onPressed: () {}, child: const Text('Outline')),
            OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.outbond_outlined), label:const Text('Outline Icon')),

            TextButton(onPressed: (){}, child: const Text('TextButton')),
            TextButton.icon(onPressed: (){}, icon: const Icon(Icons.account_balance_rounded), label: const Text('Text icon')),
              
            const CustomButton(),


            IconButton(onPressed: (){}, icon: const Icon(Icons.account_tree_sharp)),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.arrow_back_ios_sharp),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white)

              ),
            )
          ],
        ),
         
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding:EdgeInsets.symmetric(horizontal: 7.5, vertical: 12.5), 
            child: Text('Hola Mundo', style: TextStyle(color: Colors.white),)
          ),
        ),
      ),
    );
  }
}