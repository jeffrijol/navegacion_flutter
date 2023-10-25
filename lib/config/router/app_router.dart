import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../presentation/screens/screens.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {

  return GoRouter(routes: [
    GoRoute(
      path: '/',//mandar rl mismo path y con eso saber que sccreen pintar
      builder: (context, state) =>  const ResponsiveLayout(widgetBody: HomeDesktop()),
    ),
    GoRoute(
      path: '/provider',
      builder: (context, state) => const ProviderScreen(),
    ),
    GoRoute(
      path: '/provider-router',
      builder: (context, state) => const ResponsiveLayout(widgetBody: RouterScreen()),
    ),
    GoRoute(
      path: '/state-provider',
      builder: (context, state) => const StateProviderScreen(),
    ),
    GoRoute(
      path: '/records',
      builder: (context, state) => const ResponsiveLayout(widgetBody: RecordsScreen()),
    ),
    GoRoute(
      path: '/future-provider',
      builder: (context, state) => const ResponsiveLayout( widgetBody: FutureProviderScreen(),),
    ),
    GoRoute(
      path: '/rental_house-provider',
      builder: (context, state) => const ResponsiveLayout(widgetBody: RentalHouseScreen()),
    ),
    GoRoute(
      path: '/stream-provider',
      builder: (context, state) => const StreamProviderScreen(),
    ),
    GoRoute(
      path: '/change-notifier-provider',
      builder: (context, state) => const ChangeNotifierScreen(),
    ),
    GoRoute(
      path: '/state-notifier-provider',
      builder: (context, state) => const StateNotifierScreen(),
    ),
  ]);
}
