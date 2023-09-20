
import 'package:area_trabajo/presentation/screens/home/home_desktop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';
import '../../widgets/widgets.dart';
import '../screens.dart';

class DesktopScaffold extends ConsumerWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final root = ref.watch(getrouterProvider);
    print(root);
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // open drawer
            myDrawer,

            if (root == '/')
               const Flexible(child: HomeDesktop())
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
 
            // first half of page
            /* Expanded(
              flex: 2,
              child: Column(
                children: [
                  
                 // first 4 boxes in grid
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          return const Box();
                        },
                      ),
                    ),
                  ),

                  // list of previous days
                  Expanded(
                    child: ListView.builder(
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return const Tile();
                      },
                    ),
                  ), 
                ],
              ),
            ),
            // second half of page
             Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                  // list of stuff
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[200],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),  */
           
          ],
        ),
      ),
    );
  }
}