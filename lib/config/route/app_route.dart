import 'package:go_router/go_router.dart';
import 'package:test_liverpool/presentation/screens.dart/home_screen.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        name: HomeScreen.name,
        builder: (context, state) => const HomeScreen(),
        routes: const []),
  ],
);
