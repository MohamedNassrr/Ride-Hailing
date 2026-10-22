import 'package:go_router/go_router.dart';
import 'package:uber_clone/common/features/onboarding/presentation/views/onboarding_view.dart';

abstract class RiderRouter {
  static const String riderOnboarding = '/';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: riderOnboarding,
        builder: (context, state) => const OnboardingView(),
      ),
    ],
  );
}
