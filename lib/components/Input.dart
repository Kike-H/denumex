import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String label;
  final bool obscureText;
  TextEditingController controller = TextEditingController();

  Input({required this.label, this.obscureText = false, Key? key})
      : super(key: key);

  String getValue() {
    return controller.text.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 5,
          ),
          TextField(
            obscureText: obscureText,
            decoration: InputDecoration(
                labelText: label,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey))),
            controller: controller,
          ),
          const SizedBox(height: 10)
        ]);
  }
}
