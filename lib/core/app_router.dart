import 'package:fitness_app/features/auth/view/login_signup_screen.dart';
import 'package:fitness_app/features/onboarding/view/onboarding_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => OnboardingScreen()),
    GoRoute(path: '/signup', builder: (context, state) => LoginSingnupScreen())
  ],
);
