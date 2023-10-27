import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:animate_do/animate_do.dart';
import '../../../config/config.dart';
import '../../providers/providers.dart';
import '../../widgets/drawer_menu.dart';

class RentalHouseScreen extends ConsumerWidget {
  const RentalHouseScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      //appBar: myAppBar,
      backgroundColor: defaultBackgroundColor,
      body: const _RentalHouseView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          /* ref.read(todosProvider.notifier)
             .createTodo(RandomGenerator.getRandomName()); */
        },
      ),
    );
  }
}

class _RentalHouseView extends ConsumerWidget {
  const _RentalHouseView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentFilter = ref.watch(rentalHouseCurrentFilterProvider);
    final rentalHouses = ref.watch(filteredRentalHousesProvider);

    return Column(
      children: [
        ListTile(
          titleTextStyle: headlineSecondaryTextStyle,
          subtitleTextStyle: subtitleTextStyle,
          title: const Text('Listado de expedientes'),
          subtitle: const Text(
              'Estas son los expedientes que seden ser tramitados este mes'),
        ),
  
        SegmentedButton(
          segments: const [
            ButtonSegment(
                value: FilterRHType.all,
                label: Text('Todos'),
                icon: Icon(Icons.all_inbox)),
            ButtonSegment(
                value: FilterRHType.isActive, label: Text('Alquilados'),
                icon: Icon(Icons.key_sharp)),
            ButtonSegment(
                value: FilterRHType.notActive, label: Text('No alquilados'),
                icon: Icon(Icons.key_off_outlined)),
          ],
          selectedIcon: const Icon(Icons.check_circle),
          showSelectedIcon: true,
          selected: <FilterRHType>{currentFilter},
          style: ButtonStyle(
            backgroundColor:
                MaterialStateColor.resolveWith((Set<MaterialState> states) {
              return states.contains(MaterialState.selected)
                  ? Colors.teal
                  : Colors.white;
            }),
            foregroundColor:
                MaterialStateColor.resolveWith((Set<MaterialState> states) {
              return states.contains(MaterialState.selected)
                  ? Colors.white
                  : Colors.teal;
            }),
          ),
          onSelectionChanged: (value) {
            ref
                .read(rentalHouseCurrentFilterProvider.notifier)
                .setCurrentFilter(value.first);
          },
        ),
        const SizedBox(height: 5), 

        /// Listado de personas a invitar
        Expanded(
          child: ListView.builder(
            itemCount: rentalHouses.length,
            itemBuilder: (context, index) {
              final rentalHouse = rentalHouses[index];

              return FadeInRightBig(
                child: ListTile(
                    selectedTileColor: Colors.lightGreenAccent,
                    selected: false,
                    leading: CircleAvatar(
                      backgroundColor: rentalHouse.isActive
                          ? const Color(0xFF3E3E61)
                          : Colors.grey,
                      child: rentalHouse.type == 'Casa'
                          ? const Icon(Icons.home_filled)
                          : const Icon(Icons.apartment),
                    ),
                    subtitle: RichText(
                        text: TextSpan(style: listSubTittleTextStyle, children: [
                      TextSpan(text: rentalHouse.address),
                      TextSpan(text: rentalHouse.type),
                      TextSpan(text: rentalHouse.services.first.name),
                    ])),
                    title: RichText(
                      text: TextSpan(
                        style: listTittleTextStyle,
                        text: rentalHouse.managedByUser,
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  '  ${rentalHouse.services.first.provider}   Emitida el: ${rentalHouse.constructionDate.toString().substring(0, 10)}'),
                        ],
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () async {},
                      icon: const Icon(Icons.send),
                      color: Colors.teal,
                    )),
              );
            },
          ),
        )
      ],
    );
  }
}
