import 'package:area_trabajo/presentation/screens/home/home_desktop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';
import '../../widgets/widgets.dart';
import '../screens.dart';

class DashboardDesktop extends ConsumerWidget {
  final Widget widgetBody;

  const DashboardDesktop({super.key, 
    required this.widgetBody,
  }); 

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final root = ref.watch(getrouterProvider);
    print('$root: DashboardDesktop');
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,//CustomAppBar(tittle: 'DashboardDesktop', centerTitle: false, automaticallyImplyLeading: false, backgroundColor: Colors.grey[300]),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyDrawer(),
            if (root == '/')
              const Flexible(child: HomeDesktop())
            else Flexible(child: widgetBody) 
          ],
        ),
      ),
    );
  }
}
