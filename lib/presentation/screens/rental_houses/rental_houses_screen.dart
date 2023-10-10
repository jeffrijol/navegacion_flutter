import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/config.dart';
import '../../providers/providers.dart';
import '../../widgets/widgets_constants.dart';

class RentalHouseScreen extends ConsumerWidget {
  const RentalHouseScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Text('Bienes Inmuebles'),//Text('State Provider + Providers'),
      ),
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
        const ListTile(
          title: Text('Listado de expedientes'),
          subtitle: Text('Estas son los expedientes que seden ser tramitados este mes'),
        ),

        SegmentedButton(
          segments: const [
            ButtonSegment(value: FilterRHType.all, icon: Text('Todos')),
            ButtonSegment(value: FilterRHType.isActive, icon: Text('Alquilados')),
            ButtonSegment(
                value: FilterRHType.notActive, icon: Text('No alquilados')),
          ],
          selected: <FilterRHType>{currentFilter},
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

              return SwitchListTile(
                  title: Text(rentalHouse.address),
                  subtitle: Text('${rentalHouse.type}. Fecha vencimiento del expediente: ${rentalHouse.constructionDate}'),
                  value: rentalHouse.isActive,
                  //hoverColor: rentalHouse.constructionDate.isBefore(DateTime.now()) ? Colors.red.shade400 : Colors.blueGrey,
                  onChanged: (value) {

                    /* ref.read(todosProvider.notifier)
                      .toggleTodo(rentalHouse.id); */

                });
            },
          ),
        )
      ],
    );
  }
}
