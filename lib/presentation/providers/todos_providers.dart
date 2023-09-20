import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../config/config.dart';
import '../../domain/domain.dart';

part 'todos_providers.g.dart';

const uuid = Uuid();
enum FilterType { all, completed, pending }

@Riverpod(keepAlive: true)
class TodoCurrentFilter extends _$TodoCurrentFilter {
  @override
  FilterType build() => FilterType.all; 

  void setCurrentFilter ( FilterType newFilter ) {
    state = newFilter;
  }
}


@Riverpod(keepAlive: true)
class Todos extends _$Todos {
  @override
  List<Todo> build() => [
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), expiredDate: DateTime.now().subtract(const Duration(days: 7, hours: 3, minutes: 43, seconds: 56)), entidad: 'Banco Nacional',completedAt: null ),
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), expiredDate: DateTime.now().subtract(const Duration(days: 5, hours: 3, minutes: 43, seconds: 56)), entidad: 'Banco Nacional',completedAt: DateTime.now() ),
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), expiredDate: DateTime.now().subtract(const Duration(days: 1, hours: 3, minutes: 43, seconds: 56)), entidad: 'Banco Nacional',completedAt: null ),
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), expiredDate: DateTime.now().add(const Duration(days: 1, hours: 3, minutes: 43, seconds: 56)), entidad: 'Banco MUCAP',completedAt: DateTime.now() ),
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), expiredDate: DateTime.now().add(const Duration(days: 10, hours: 3, minutes: 43, seconds: 56)), entidad: 'Banco MUCAP',completedAt: null ),
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), expiredDate: DateTime.now().add(const Duration(days: 100, hours: 3, minutes: 43, seconds: 56)), entidad: 'Banco MUCAP',completedAt: null ),
  ];

  void toggleTodo(String id) {

    state = state.map((todo) {
      
      if ( todo.id == id ) {
        todo = todo.copyWith(
          completedAt: todo.done ? null : DateTime.now()
        );
      }
      return todo;
    }).toList();


  }


  void createTodo( String description ) {
    state = [
      ...state, 
      Todo(id: uuid.v4(), description: description, expiredDate: DateTime.now().add(const Duration(days: 90, hours: 3, minutes: 43, seconds: 56)), entidad: 'Nueva entidad', completedAt: null),
    ];
  }

}


///  filteredTodos // SOLO LECTURA
@riverpod
List<Todo> filteredTodos(FilteredTodosRef ref) {
  
  final currentFilter = ref.watch( todoCurrentFilterProvider );
  final todos = ref.watch( todosProvider );

  switch( currentFilter ){
    case FilterType.all:
      return todos;

    case FilterType.completed:
      return todos.where((todo) => todo.done).toList();

    case FilterType.pending:
      return todos.where((todo) => !todo.done).toList();
  }

}

