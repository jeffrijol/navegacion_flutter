import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../presentation/screens/screens.dart';

part 'app_router.g.dart';


@riverpod
GoRouter appRouter(AppRouterRef ref) {

  return GoRouter(routes: [
    GoRoute(
      path: '/',//mandar rl mismo path y con eso saber que sccreen pintar
      builder: (context, state) =>  ResponsiveLayout(
        /* mobileBody:  const MobileScaffold(),
        tabletBody: const TabletScaffold(),
        desktopBody: const DesktopScaffold(), */
      ),
    ),
    GoRoute(
      path: '/provider',
      builder: (context, state) => const ProviderScreen(),
    ),
    GoRoute(
      path: '/provider-router',
      builder: (context, state) => ResponsiveLayout(
        /* mobileBody:  const MobileScaffold(),
        tabletBody: const TabletScaffold(),
        desktopBody: const DesktopScaffold(), */
      ),
    ),
    GoRoute(
      path: '/state-provider',
      builder: (context, state) => const StateProviderScreen(),
    ),
    GoRoute(
      path: '/records',
      builder: (context, state) => ResponsiveLayout(
        /* mobileBody:  const MobileScaffold(),
        tabletBody: const TabletScaffold(),
        desktopBody: const DesktopScaffold(), */
      ),
    ),
    GoRoute(
      path: '/future-provider',
      builder: (context, state) => ResponsiveLayout(
        /* mobileBody:  const MobileScaffold(),
        tabletBody: const TabletScaffold(),
        desktopBody: const DesktopScaffold(), */
      ),
    ),
    GoRoute(
      path: '/future-family-provider',
      builder: (context, state) => ResponsiveLayout(
        /* mobileBody:  const MobileScaffold(),
        tabletBody: const TabletScaffold(),
        desktopBody: const DesktopScaffold(), */
      ),
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
