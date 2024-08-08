import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/data/bloc/counter_event.dart';
import 'package:flutter_application_1/data/bloc/counter_state.dart';
import 'package:flutter_application_1/data/bloc/model.dart';

/* 
shahnda 15
gameel  5
abdallah 5 
bassant 15
 */
// BLoC
class NoteBloc extends Bloc<NoteEvent, NoteState> {
  NoteBloc() : super(NoteInitial()) {
    on<AddNote>(_onAddNote);
    on<UpdateNote>(updateNote);
    on<DeleteNote>(_onDeleteNote);
    // call Add note
    // call update note
    // call delete note
  }
/* 
bassant 5 + 5 + 5
shahnda 5 + 5
sally 5 
abdallah 5 
gameel 5
 */
// Example state update for AddNote event
  Future<void> _onAddNote(AddNote event, Emitter<NoteState> emit) async {
    // bloc package || bloc class
    final currentState = state;
    if (currentState is NoteLoaded) {
      final updatedNotes = List<Note>.from(currentState.notes)..add(event.note);
      emit(NoteLoaded(updatedNotes));

      /* 
      //final updatedNotes = List<Note>.from(currentState.notes)..add(event.note);
      var updated notes = [Note model].from(currentstate.notes)
      // list notes = []; => list notes = [],
      // list notes = []; => list notes = [1,2],
      // list notes = []; => list notes = [1,2,3],
       */
// to show loaded notes in the ui
      /*   emit(NoteLoaded(updatedNotes));
    } else if (currentState is NoteInitial) {
      emit(NoteLoaded([event.note]));
    } */
    } else if (currentState is NoteInitial) {
      emit(NoteLoaded([event.note]));
    }
  }

  ///////////////////////////////////////////////
  Future<void> updateNote(UpdateNote event, Emitter<NoteState> emit) async {
    final currentState = state;
    if (currentState is NoteLoaded) {
      final updatedNotes = currentState.notes.map((element) {
        return element.id == event.note.id ? event.note : element;
      }).toList();
      emit(NoteLoaded(updatedNotes));
    }
  }

  Future<void> _onDeleteNote(DeleteNote event, Emitter<NoteState> emit) async {
    final currentState = state;
    if (currentState is NoteLoaded) {
      final updatedNotes = currentState.notes
          .where((element) => element.id != event.id)
          .toList();
      emit(NoteLoaded(updatedNotes));
    }
  }
}



/* 
  Future<void> _onUpdateNote(UpdateNote event, Emitter<NoteState> emit) async {
    final currentState = state;
    if (currentState is NoteLoaded) {
      final updatedNotes = currentState.notes.map((loopOnNotes) {
        return loopOnNotes.id == event.note.id ? event.note : loopOnNotes;
      }).toList();
      emit(NoteLoaded(updatedNotes));
    }
  } */

  /*
 */
  