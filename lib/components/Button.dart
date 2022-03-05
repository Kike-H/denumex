import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final int colorBackground;
  final Color colorFont;
  final Function callback;
  const Button({
    Key? key,
    required this.label,
    required this.colorBackground,
    required this.colorFont,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        callback();
      },
      minWidth: double.infinity,
      height: 60,
      color: Color(colorBackground),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Text(
        label,
        // ignore: prefer_const_constructors
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 18, color: colorFont),
      ),
    );
  }
}
