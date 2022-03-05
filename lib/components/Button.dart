import 'package:flutter/material.dart';
import 'package:denumex/screens/Report.dart';

class Button extends StatelessWidget {
  final String label;
  final int colorBackground;
  final Color colorFont;
  final int action;

  const Button({
    Key? key,
    required this.label,
    required this.colorBackground,
    required this.colorFont,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        if (action == 1) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Report()));
        } else if (action == 2) {
          showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                    title: const Text('Corrupción reportada'),
                    content: const Text('La corrupción fue reportada'),
                  ));
        }
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
