import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController ?textEditingController;
  final String? hintText;
  
  const TextFieldWidget({super.key,this.textEditingController,this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(controller: textEditingController,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[800]),
          hintText: hintText,
          
          fillColor: Colors.white70),
    );
  }
}
