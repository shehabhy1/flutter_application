/* import 'package:flutter/material.dart';

class IconChangeExample extends StatefulWidget {
  @override
  _IconChangeExampleState createState() => _IconChangeExampleState();
}

class _IconChangeExampleState extends State<IconChangeExample> {
  bool _isPressed = false;

  void _toggleIcon() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Change Example'),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(
            _isPressed ? Icons.favorite : Icons.favorite_border,
            color: _isPressed ? Colors.red : Colors.grey,
          ),
          onPressed: _toggleIcon,
          iconSize: 100.0,
        ),
      ),
    );
  }
}
 */