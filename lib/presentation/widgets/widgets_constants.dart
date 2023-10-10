import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../providers/providers.dart';

final defaultBackgroundColor = Colors.grey[300];
final appBarColor = Colors.grey[900];
final myAppBar = AppBar(
  backgroundColor: appBarColor,
  title: const Text(' '),
  centerTitle: false,
);
final drawerTextColor = TextStyle(
  color: Colors.grey[600],
);
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
final myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  elevation: 0,
  child: const Column(
    children: [
      _DrawerHeader(
        icon: Icon(Icons.business_center),
        location: '/', iconSize: 64,
      ),
      _CustomListTile(
        icon: Icon(Icons.home),
        title: 'D A S H B O A R D',
        location: '/future-provider',
      ),
      _CustomListTile(
        icon: Icon(Icons.settings),
        title: 'E X P E D I E N T E S',
        location: '/records',
      ),
      _CustomListTile(
        icon: Icon(Icons.settings),
        title: 'I N M U E B L E S',
        location: '/future-family-provider',
      ),
      _CustomListTile(
        icon: Icon(Icons.settings),
        title: 'I N V E R S I O N E S',
        location: '/future-family-provider',
      ),
      _CustomListTile(
        icon: Icon(Icons.logout),
        title: 'L O G O U T',
        location: '/provider-router',
      ),
    ],
  ),
);

class _CustomListTile extends ConsumerWidget {
  final String title;
  final String location;
  final Icon icon;

  const _CustomListTile({
    required this.title,
    required this.location,
    required this.icon,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: tilePadding,
      child: ListTile(
        title: Text(
          title,
          style: drawerTextColor,
        ),
        leading: icon,
        onTap: () {
          ref.read(getrouterProvider.notifier).changeRouter(location);
          context.push(location);
        }, //: () => context.push(location),
      ),
    );
  }
}

class _DrawerHeader extends ConsumerWidget {
  final String location;
  final Icon icon;
  final double iconSize;

  const _DrawerHeader({
    required this.location,
    required this.icon,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(onPressed: () {
          ref.read(getrouterProvider.notifier).changeRouter(location);
          context.push(location);
        }, icon: icon, iconSize: iconSize,);
  }
}
