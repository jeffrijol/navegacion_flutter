import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../presentation/screens/screens.dart';

class ResponsiveLayout extends ConsumerWidget {
  final Widget widgetBody;
  
  const ResponsiveLayout({super.key, 
    required this.widgetBody,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //ref.read(getrouterProvider.notifier).changeRouter(root);
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return DashboardMobile(widgetBody: widgetBody); //mobileBody;
        } else if (constraints.maxWidth < 1100) {
          return DashboardTablet(widgetBody: widgetBody); //tabletBody;
        } else {
          return DashboardDesktop(widgetBody: widgetBody);//desktopBody;
        }
      },
    );
  }
}
