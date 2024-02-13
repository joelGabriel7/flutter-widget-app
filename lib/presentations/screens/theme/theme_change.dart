import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentations/providers/theme_provider.dart';

class ThemeChangeScreen extends ConsumerWidget {
  static const name = 'themechangescreen';
  const ThemeChangeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Change'),
        actions: [
          IconButton(
            icon: Icon(isDarkMode
                ? Icons.dark_mode_outlined
                : Icons.light_mode_outlined),
            onPressed: () {
              ref.read(isDarkModeProvider.notifier).state = !isDarkMode;
            },
          ),
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();
  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(selectColorProvider);

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];

        return RadioListTile(
            title: Text('Este color', style: TextStyle(color: color)),
            subtitle: Text('Este es el color ${color.value}'),
            value: index,
            groupValue: selectedColor,
            onChanged: (value) {
              ref.read(selectColorProvider.notifier).state = index;
            });
      },
    );
  }
}
