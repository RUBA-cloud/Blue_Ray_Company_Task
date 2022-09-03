

import '../model/exported_packages.dart';

class TextWidget extends StatelessWidget {
 
  final text, textStyle;
  const TextWidget({super.key, required this.text, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: textStyle);
  }
}
