import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentations/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [

    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonScreens.name,
      builder: (context, state) => const ButtonScreens(),
    
    ),
    GoRoute(
      path: '/cards',
      name: CardScreens.name,
      builder: (context, state) => const CardScreens(),
    
    ),
  ],
);