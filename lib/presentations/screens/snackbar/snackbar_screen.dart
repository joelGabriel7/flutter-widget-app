import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snack_bars_creen';

  const SnackBarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text('Do et mollit quis incididunt Lorem nisi tempor dolor sint proident dolore ea dolore aute. Exercitation veniam magna consequat cillum Lorem est minim ea ipsum est incididunt. Nostrud cupidatat minim ipsum aute occaecat minim ad est dolore tempor. Dolor ex occaecat sint duis labore officia dolore deserunt aliqua do labore eu ipsum dolore. Consequat ea et esse dolor qui deserunt labore dolor non ex nulla amet.'),
        actions: [
          TextButton(onPressed: () => context.pop() , child: const Text('Cancelar')),
          FilledButton(onPressed: () => context.pop() , child: const Text('Aceptar')),
        ],
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Snackbars y Dialogos'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton.tonal(
                  onPressed: () {
                    showAboutDialog(
                      context: context, 
                      children: [
                        const Text('Ad tempor labore sint consequat. Laboris eu labore ea deserunt. Veniam amet enim magna quis cupidatat officia eu nulla sunt veniam incididunt mollit. Proident do ut voluptate nisi enim deserunt aute eiusmod ipsum magna. Proident aliqua nulla proident qui aute excepteur. Ex deserunt occaecat ad officia eiusmod consequat nisi culpa dolore sint ullamco sit exercitation ipsum. Ipsum amet aliqua laborum deserunt ullamco velit tempor Lorem.')]);
                  },
                  child: const Text('Licencias Usadas')),
              FilledButton.tonal(
                  onPressed: () => openDialog(context),
                   child: const Text('Mostrar diálogo'))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () => showCustomSnackbar(context),
            label: const Text("Mostrar Snackbar"),
            icon: const Icon(Icons.remove_red_eye_outlined)));
  }
}
