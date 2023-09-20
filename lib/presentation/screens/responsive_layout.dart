import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../presentation/screens/screens.dart';

class ResponsiveLayout extends ConsumerWidget {
  /* final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody; */

  /* ResponsiveLayout({
    required this.mobileBody,
    required this.tabletBody,
    required this.desktopBody,
  }); */

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //ref.read(getrouterProvider.notifier).changeRouter(root);
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return const MobileScaffold(); //mobileBody;
        } else if (constraints.maxWidth < 1100) {
          return const TabletScaffold(); //tabletBody;
        } else {
          return const DesktopScaffold();//desktopBody;
        }
      },
    );
  }
}
