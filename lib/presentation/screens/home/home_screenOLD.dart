import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreenOLD extends StatelessWidget {
  const HomeScreenOLD({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Providers'),
      ),
      body: const _HomeScreenView(),
    );
  }
}

class _HomeScreenView extends StatelessWidget {
  const _HomeScreenView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [

        _CustomListTile(
            title: 'Provider Simple',
            subTitle: 'Un provider de sólo lectura',
            location: '/provider'),

        _CustomListTile(
            title: 'Provider + Go_Router',
            subTitle: 'Un uso aplicado',
            location: '/provider-router'),

        _CustomListTile(
            title: 'State Provider',
            subTitle: 'Un estado para almacenar un objeto',
            location: '/state-provider'),

        _CustomListTile(
            title: 'State Provider + Provider',
            subTitle: 'TODO - Una mezcla entre providers',
            location: '/todo'),

        _CustomListTile(
            title: 'Future Provider',
            subTitle: 'Mantener el estado de un future y su retorno',
            location: '/future-provider'),

        _CustomListTile(
            title: 'Family Future Provider',
            subTitle: 'Providers con argumentos',
            location: '/future-family-provider'),


        _CustomListTile(
            title: 'Stream Provider',
            subTitle: 'Mantener el estado de un Stream y sus emosiones',
            location: '/stream-provider'),


        _CustomListTile(
            title: 'State Notifier Provider',
            subTitle: 'Provider con notificación automática',
            location: '/state-notifier-provider'),

        _CustomListTile(
            title: 'Change Notifier Provider',
            subTitle: 'Provider con control de notificación a listeners',
            location: '/change-notifier-provider'),
      ],
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String location;

  const _CustomListTile({
    required this.title,
    required this.subTitle,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.all(8),
            color: Colors.red,
            child: ListTile(
              title: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(subTitle),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
              onTap: () => context.push(location)
            ),
          );
    /* ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () => context.push(location),
    ); */
    
  }
}
