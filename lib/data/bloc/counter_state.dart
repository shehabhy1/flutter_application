import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/data/bloc/model.dart';

abstract class NoteState {
  /*  @override
  List<Object?> get props => []; */
}

// note starts
class NoteInitial extends NoteState {}

// note loaded
class NoteLoaded extends NoteState {
  final List<Note> notes;

  NoteLoaded(this.notes);

  /*  @override
  List<Object?> get props => [notes]; */
}

/* part of 'counter_bloc.dart';

sealed class CounterState extends Equatable {
  const CounterState();
  
  @override
  List<Object> get props => [];
}

final class CounterInitial extends CounterState {}
 */
