import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
  child: Column(
    children: [
      const DrawerHeader(
        child: Icon(
          Icons.favorite,
          size: 64,
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.home),
          title: Text(
            'D A S H B O A R D',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.settings),
          title: Text(
            'S E T T I N G S',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.info),
          title: Text(
            'A B O U T',
            style: drawerTextColor,
          ),
        ),
      ),
      /* Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.logout),
          title: Text(
            'L O G O U T',
            style: drawerTextColor,
          ),
        ),
      ), */
      const _CustomListTile(
          icon: Icon(Icons.logout),
          title: 'L O G O U T' , location: '/provider-router',
       
      ),
    ],
  ),
);



class _CustomListTile extends StatelessWidget {
  final String title;
  final String location;
  final Icon icon;

  const _CustomListTile({required this.title,
    required this.location,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: tilePadding,
      child: ListTile(
        title: Text(title,
            style: drawerTextColor,),
        leading: icon,
        onTap: () => context.push(location),
      ),
    );
  }
}
