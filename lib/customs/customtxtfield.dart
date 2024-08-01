import 'package:flutter/material.dart';

/* 

 */
class CustomField extends StatelessWidget {
  CustomField({super.key, this.labelText, this.prefixIcon, this.maxLength});
  TextEditingController controller = TextEditingController();
  String? labelText;
  Widget? prefixIcon;
  int? maxLength;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        maxLength: maxLength,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          labelText: labelText,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
