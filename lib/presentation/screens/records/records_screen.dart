import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/config.dart';
import '../../providers/providers.dart';
import '../../widgets/drawer_menu.dart';

class RecordsScreen extends ConsumerWidget {
  const RecordsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Text('Expendientes tramitados'),//Text('State Provider + Providers'),
      ),
      backgroundColor: defaultBackgroundColor,
      body: const _TodoView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          ref.read(todosProvider.notifier)
             .createTodo(RandomGenerator.getRandomName());
        },
      ),
    );
  }
}

class _TodoView extends ConsumerWidget {
  const _TodoView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentFilter = ref.watch(todoCurrentFilterProvider);
    // final todos = ref.watch(todosProvider);
    final todos = ref.watch(filteredTodosProvider);

    return Column(
      children: [
        const ListTile(
          title: Text('Listado de expedientes'),
          subtitle: Text('Estas son los expedientes que seden ser tramitados este mes'),
        ),

        SegmentedButton(
          segments: const [
            ButtonSegment(value: FilterType.all, icon: Text('Todos')),
            ButtonSegment(value: FilterType.completed, icon: Text('Tramitados')),
            ButtonSegment(
                value: FilterType.pending, icon: Text('No tramitados')),
          ],
          selected: <FilterType>{currentFilter},
          onSelectionChanged: (value) {
            ref
                .read(todoCurrentFilterProvider.notifier)
                .setCurrentFilter(value.first);
          },
        ),
        const SizedBox(height: 5),

        /// Listado de personas a invitar
        Expanded(
          child: ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];

              return SwitchListTile(
                  title: Text(todo.description),
                  subtitle: Text('${todo.entidad}. Fecha vencimiento del expediente: ${todo.expiredDate}'),
                  value: todo.done,
                  hoverColor: todo.expiredDate.isBefore(DateTime.now()) ? Colors.red.shade400 : Colors.blueGrey,
                  onChanged: (value) {

                    ref.read(todosProvider.notifier)
                      .toggleTodo(todo.id);

                });
            },
          ),
        )
      ],
    );
  }
}
