/* import 'package:flutter/material.dart';

class FormFullExample extends StatefulWidget {
  @override
  _FormFullExampleState createState() => _FormFullExampleState();
}

class _FormFullExampleState extends State<FormFullExample> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Full Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value ?? '';
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}
 */