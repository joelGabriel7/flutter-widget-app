import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_item.dart';
import 'package:widgets_app/presentations/widgtes/side_menu.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffolKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffolKey,
      appBar: AppBar(
        title: const Text('Flutter + Material 3 '),
      ),
      body: _HomeView(),
      drawer:  SideMenu(scaffolKey: scaffolKey,),
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
      leading: Icon(
        menuText.icon,
        color: colors.primary,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: colors.primary,
      ),
      title: Text(menuText.title),
      subtitle: Text(menuText.subTitle),
      onTap: () {
        //  Navigator.of(context).push(
        //       MaterialPageRoute(
        //           builder: (context) => const ButtonScreens(),
        //        ),
        //   );

        // Navigator.pushNamed(context, menuText.link);
        context.push(menuText.link);
        // context.pushNamed(ButtonScreens.name);
      },
    );
  }
}
