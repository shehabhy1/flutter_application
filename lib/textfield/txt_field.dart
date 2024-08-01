import 'package:flutter/material.dart';
import 'package:flutter_application_1/customs/customtxtfield.dart';

/* 
abdallah 5 + 5 + 20 + 5 + 5 + 5
gameel 5 + 5 + 5 + 10 + 15 + 5 + 10 + 5 + 5 + 10 
shahnda 5 + 10 + 5 + 10 + 5 + 5 + 10 + 5 + 10 
sally 5 + 5 + 5 + 5 + 5 + 5
wessam 5 + 20 + 5 + 5 + 10 + 10 
bassant 5 + 5 + 15
abdelrhman 5 
mohamed khaled 5
 */
class CustomTextField extends StatelessWidget {
  CustomTextField({super.key});
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    submit() {
      if (email.text.contains('@') && password.text.isEmpty) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('success')));
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('failed')));
      }
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomField(
              maxLength: 10,
              labelText: 'email',
              prefixIcon: Icon(Icons.abc),
            ),
            CustomField(),
            CustomField(),
            CustomField(),
            CustomField(),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(onPressed: submit, child: Text('submit'))
          ],
        ),
      ),
    );
  }
}
