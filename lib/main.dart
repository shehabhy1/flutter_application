import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/data/bloc/counter_bloc.dart';
import 'package:flutter_application_1/data/bloc/ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* 
bassant 5 + 5 + 10
sally 5 
abdallah 5 + 5 
shahnda 5 + 5 + 5
gameel 5  
 */
void main() {
  runApp(MyApp());
}

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

class SimpleForm extends StatefulWidget {
  @override
  _SimpleFormState createState() => _SimpleFormState();
}

class _SimpleFormState extends State<SimpleForm> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  void _validateInputs() {
    if (_usernameController.text.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('data')));
    }
    if (_emailController.text.isEmpty) {
      _showSnackBar('Please enter your email');
      return;
    }
    if (!_emailController.text.contains('@')) {
      _showSnackBar('Please enter a valid email');
      return;
    }
    if (_passwordController.text.isEmpty) {
      _showSnackBar('Please enter your password');
      return;
    }
    if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(_passwordController.text)) {
      _showSnackBar(
          'Password must be at least 8 characters, include an uppercase letter and a special character');
      return;
    }
    if (_confirmPasswordController.text != _passwordController.text) {
      _showSnackBar('Passwords do not match');
      return;
    }

    _showSnackBar('Processing Data');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: 'Username',
            ),
          ),
          TextField(
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
              LengthLimitingTextInputFormatter(10),
            ],
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Email',
            ),
          ),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
            obscureText: true,
          ),
          TextField(
            controller: _confirmPasswordController,
            decoration: InputDecoration(
              labelText: 'Confirm Password',
            ),
            obscureText: true,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _validateInputs,
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
