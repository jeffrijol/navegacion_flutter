import 'package:area_trabajo/presentation/screens/home/home_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';
import '../../widgets/widgets.dart';
import '../screens.dart';

class MobileScaffold extends ConsumerWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final root = ref.watch(getrouterProvider);
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            

            if (root == '/')
               const Flexible(child: HomeMobile())
            else if (root == '/future-provider')
              const Flexible(child: FutureProviderScreen())
            else if (root == '/records')
              const Flexible(child: RecordsScreen())
            else if (root == '/provider-router')
              const Flexible(child: RouterScreen())
            else if (root == '/future-family-provider')
              const Flexible(child: FamilyFutureScreen())
            else 
              const StateProviderScreen() 
          ],
        ),
      ),
    );
  }
}
