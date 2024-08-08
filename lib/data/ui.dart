import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/bloc.dart';
import 'package:flutter_application_1/data/event.dart';
import 'package:flutter_application_1/data/model.dart';
import 'package:flutter_application_1/data/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesScreen extends StatelessWidget {
  NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notes',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: BlocBuilder<NoteBloc, NoteState>(
        builder: (context, state) {
          //final currentstate = state;
          if (state is NoteInitial) {
            return Center(child: Text('No notes yet.'));
          } else if (state is NoteLoaded) {
            return ListView.builder(
              itemCount: state.notes.length,
              itemBuilder: (context, index) {
                final note = state.notes[index];
                return ListTile(
                  title: Text(note.title),
                  subtitle: Text(note.description),
                  leading: Text('index:$index'),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      BlocProvider.of<NoteBloc>(context)
                          .add(DeleteNote(note.id));
                    },
                  ),
                  onTap: () {
                    _showUpdateNoteDialog(context, note);
                  },
                );
              },
            );
          }
          return Center(child: Text('Something went wrong.'));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddNoteDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _showAddNoteDialog(BuildContext context) {
    final TextEditingController noteTitleController = TextEditingController();
    final TextEditingController noteContentController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    String _name = '';
    void _submitForm() {
      if (_formKey.currentState!.validate()) {
        // Save the form's state
        _formKey.currentState!.save();

        // Use the saved value (e.g., print it or send it to the server)
        print('Name: $_name');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Processing Data: $_name')),
        );
      }
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Note'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                /*  validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value ?? _nameController.text;
                }, */
                controller: noteTitleController,
                decoration: InputDecoration(hintText: 'Enter note content'),
              ),
              TextFormField(
                controller: noteContentController,
                decoration: InputDecoration(hintText: 'Enter note desc'),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                final noteTitle = noteTitleController.text;
                final noteDescription = noteContentController.text;
                if (noteTitle.isNotEmpty) {
                  BlocProvider.of<NoteBloc>(context).add(
                    AddNote(
                      Note(
                        id: DateTime.now().toString(), // Generate a unique ID
                        title: noteTitle,
                        description: noteDescription,
                      ),
                    ),
                  );
                }
                Navigator.of(context).pop();
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  void _showUpdateNoteDialog(BuildContext context, Note note) {
    final TextEditingController updateNoteTitleCotroller =
        TextEditingController();
    final TextEditingController updateNoteContentController =
        TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Update Note'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: updateNoteTitleCotroller,
                decoration: InputDecoration(hintText: 'update note title'),
              ),
              TextField(
                controller: updateNoteContentController,
                decoration:
                    InputDecoration(hintText: 'update note description'),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                final content = updateNoteTitleCotroller.text;
                final description = updateNoteContentController.text;
                if (content.isNotEmpty && description.isNotEmpty) {
                  BlocProvider.of<NoteBloc>(context).add(
                    UpdateNote(
                      note.copyWith(title: content, description: description),
                    ),
                  );
                } else if (content.isEmpty && description.isNotEmpty) {
                  BlocProvider.of<NoteBloc>(context).add(
                    UpdateNote(
                      note.copyWith(
                          title: note.title, description: description),
                    ),
                  );
                } else if (description.isEmpty && content.isNotEmpty) {
                  BlocProvider.of<NoteBloc>(context).add(
                    UpdateNote(
                      note.copyWith(
                          title: content, description: note.description),
                    ),
                  );
                } else {
                  BlocProvider.of<NoteBloc>(context).add(
                    UpdateNote(
                      note.copyWith(
                          title: note.title, description: note.description),
                    ),
                  );
                }
                Navigator.of(context).pop();
              },
              child: Text('Update'),
            ),
          ],
        );
      },
    );
  }
}
