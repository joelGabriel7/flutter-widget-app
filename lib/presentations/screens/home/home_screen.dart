import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3 '),
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {

        final menuText = appMenuItems[index]; 
      
        return _CustomListTIle(menuText: menuText);
      },
    );
  }
}

class _CustomListTIle extends StatelessWidget {
  const _CustomListTIle({
    required this.menuText,
  });


  final MenuItem menuText;

  @override
  Widget build(BuildContext context) {

  final colors = Theme.of(context).colorScheme;
    
    
    return ListTile(
      leading: Icon(menuText.icon, color: colors.primary,),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary,),
      title: Text(menuText.title),
      subtitle: Text(menuText.subTitle),
      onTap: () {
        // TODO:  navegar a otra pantallas
      },

    );
  }
}
