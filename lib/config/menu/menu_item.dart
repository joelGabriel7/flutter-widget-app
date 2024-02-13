import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Riverpord Counter',
      subTitle: 'Introduccion a Riverpod',
      link: "/counter_screen",
      icon: Icons.abc),
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en Flutter',
      link: "/buttons",
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Cartas',
      subTitle: 'Un contenedor estilizado',
      link: "/cards",
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicator',
      subTitle: 'Generales y controlados',
      link: "/progress",
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Snackbars y dialogos',
      subTitle: 'Indicadores en Pantalla',
      link: "/snackbars",
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated Container',
      subTitle: 'Indicadores en Pantalla',
      link: "/animated",
      icon: Icons.check_box_outlined),
  MenuItem(
      title: 'Ui Controls + Tiles',
      subTitle: 'Una seria de controles de ui con flutter',
      link: "/ui-controls",
      icon: Icons.umbrella_outlined),
  MenuItem(
      title: 'App Tutorial',
      subTitle: 'Tutorial de la aplicación',
      link: "/tutorial",
      icon: Icons.turn_right),
  MenuItem(
      title: 'InfiniteScroll y Pull',
      subTitle: 'Listas infinitas y pull to refresh',
      link: "/infinite",
      icon: Icons.list_alt_outlined),
  MenuItem(
      title: 'Cambiar Tema',
      subTitle: 'Cambiar el tema de la aplicación',
      link: "/theme_change",
      icon: Icons.color_lens_outlined),
];
