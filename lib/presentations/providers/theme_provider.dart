import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Listado de colores imutables
final colorListProvider = Provider((ref) => colorList);
// un simple boolean
final isDarkModeProvider = StateProvider<bool>((ref) => false);
// un boolen para seleccionar el color
final selectColorProvider = StateProvider((ref) => 0);

// Objeto de tipo AppTheme custom

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier,AppTheme>(
  (ref) => ThemeNotifier(),
  );


class ThemeNotifier extends StateNotifier <AppTheme>{
  ThemeNotifier() :  super(AppTheme());

  void toggleDarkMode(){
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int index){
   state = state.copyWith(selectedColor: index);
  }

}
