import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';


// Listado de colores imutables
final colorListProvider = Provider((ref) => colorList);
// un simple boolean
final isDarkModeProvider = StateProvider<bool>((ref) => false);
// un boolen para seleccionar el color
final selectColorProvider = StateProvider((ref) => 0);
