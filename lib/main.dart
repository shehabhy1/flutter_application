import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/bloc.dart';
import 'package:flutter_application_1/textfield/txt_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* 
complete assets == img - icon - font 
use package in flutter audio
textfield 
treat with datatypes in flutter 
today
 */
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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider(
      create: (_) => StateCubit(),
      child: CounterPage(),
    ));
  }
}

// Bloc 