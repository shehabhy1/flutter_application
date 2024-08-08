import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/data/bloc/model.dart';

abstract class NoteEvent {
  /*  @override
  List<Object?> get props => []; */
}

// CRUD operations
/* 
C: create 
R: read 
U: update 
D: delete
 */
class AddNote extends NoteEvent {
  final Note note;

  AddNote(this.note);

/*   @override
  List<Object?> get props => [note]; */
}

class UpdateNote extends NoteEvent {
  final Note note;

  UpdateNote(this.note);

  /*  @override
  List<Object?> get props => [note]; */
}

class DeleteNote extends NoteEvent {
  final String id;

  DeleteNote(this.id);

  /*  @override
  List<Object?> get props => [id]; */
}

/* part of 'counter_bloc.dart';

sealed class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}
 */
