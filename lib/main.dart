import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/bloc.dart';
import 'package:flutter_application_1/data/ui.dart';
import 'package:flutter_application_1/logic/ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// flutter pub add audioplayers

/* 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      home: BlocProvider(
        create: (_) => CounterCubit(),
        child: CounterPage(),
      ),
    );
  }
}

 */
void main() {
  runApp(MyApp());
}

/* 
screen has 5 container 
each container different color 
each container different audio
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteBloc(),
      child: MaterialApp(
        title: 'Notes App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: NotesScreen(),
      ),
    );
  }
}

class GoTo extends StatelessWidget {
  const GoTo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('go to '), actions: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (builder) => TuneView()));
            },
            icon: Icon(Icons.abc)),
      ]),
    );
  }
}
// Bloc 