import 'package:flutter/material.dart';
class InputTextField extends StatelessWidget {
  const InputTextField({
    Key? key,
    required this.controller, required this.hintText, required this.isObSecureText,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final bool isObSecureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObSecureText,
      controller: controller,
      decoration:  InputDecoration(
        enabledBorder:const OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black)),
        hintText: hintText,
        hintStyle:const TextStyle(
            fontFamily: "Roboto_", fontWeight: FontWeight.w400, fontSize: 15),
        focusedBorder:const OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.black)),
      ),
      cursorColor: Colors.black,
    );
  }
}
