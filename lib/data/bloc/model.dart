class Note {
  final String id;
  final String title;
  final String description;

  Note({
    required this.id,
    required this.title,
    required this.description,
  });
/* 
shahnda + 5
*/
  Note copyWith({
    String? id,
    String? title,
    String? description,
  }) {
    return Note(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }
}
