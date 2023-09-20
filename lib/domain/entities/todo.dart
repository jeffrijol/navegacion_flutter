

class Todo {

  final String id;
  final String description;  
  final String entidad;
  final DateTime? completedAt;
  final DateTime expiredDate;


  Todo({
    required this.id,
    required this.description,
    required this.entidad,
    required this.completedAt,
    required this.expiredDate
  });

  bool get done {
    return completedAt != null; // true or false
  }

  Todo copyWith({
    String? id,
    String? description,
    String? entidad,
    DateTime? completedAt,
  }) => Todo(
    id: id ?? this.id,
    description: description ?? this.description,
    entidad: entidad ?? this.entidad,
    completedAt: completedAt, expiredDate: expiredDate,
  );

}