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

    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen(),
    ),

    GoRoute(
      path: '/snackbars',
      name: SnackBarScreen.name,
      builder: (context, state) => const SnackBarScreen(),
    ),
    GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
      path: '/ui-controls',
      name: UiControlsScreens.name,
      builder: (context, state) => const UiControlsScreens(),
    ),

    GoRoute(
      path: '/tutorial',
      name:AppTutorialScreen.name,
      builder: (context, state) => const AppTutorialScreen(),
    ),
  ],
);