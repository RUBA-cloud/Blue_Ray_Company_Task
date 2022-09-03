import 'package:flutter/material.dart';
import 'package:task/model/exported_packages.dart';

class ButtonWidget extends StatelessWidget {
  @override
  final  action;
  final text;
  final style;
  const ButtonWidget({super.key, required this.text, required this.style,required this.action});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ElevatedButton(
          style: style,
          onPressed: action,
          child: TextWidget(
            text: text,
            textStyle: boldTextStyleBlack,
          )),
    );
  }
}
