import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp()); //mohamed
}

class MyApp extends StatelessWidget {
  //MOMO
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //abdelrahman
      title: '', //abdelrahman
    );
  }
}

class Flutter extends StatefulWidget {
  //MOMO
  const Flutter({super.key}); //abdelrahman

  @override
  State<Flutter> createState() => _FiState(); //momo
}

class _FiState extends State<Flutter> {
  //momo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //moha
      body: Column(children: [
        Container(
          //momo
          child: Text('sadasd'), //MOMO
        ), //
      ]), //MOMO
    ); //MOMO
  }
}
