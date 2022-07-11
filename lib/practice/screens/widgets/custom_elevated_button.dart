import 'package:flutter/material.dart';
import 'package:whatsapp1/practice/screens/screens.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.navigation, required this.text,
  }) : super(key: key);
  final void Function() navigation;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: navigation,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.black),
        elevation: MaterialStateProperty.all(0),
        fixedSize: MaterialStateProperty.all(
            Size(MediaQuery.of(context).size.width, 55)),
        side: MaterialStateProperty.all(BorderSide(color: Colors.black)),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white,
            fontFamily: "Roboto_",
            fontWeight: FontWeight.w900,
            fontSize: 13),
      ),
    );
  }
}
