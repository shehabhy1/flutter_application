import 'package:flutter/material.dart';
import 'package:flutter_application_1/textfield/txt_field.dart';

/* 
complete assets == img - icon - font 
use package in flutter audio
textfield 
treat with datatypes in flutter 
today
 */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomTextField(),
    );
  }
}
