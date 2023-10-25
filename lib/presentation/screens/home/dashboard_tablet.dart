import 'package:area_trabajo/presentation/screens/home/home_tablet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/providers.dart';
import '../../widgets/widgets.dart';

class DashboardTablet  extends ConsumerWidget {
  final Widget widgetBody;

  const DashboardTablet({super.key, 
    required this.widgetBody,
  }); 

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final root = ref.watch(getrouterProvider);
    print('$root: DashboardTablet');
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      drawer: myDrawer,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: root == '/' ? const Flexible(child: HomeTablet()) : Column(
          children: [
              Flexible(child: widgetBody)
          ],
        ),
      ),
    );
  }
}
