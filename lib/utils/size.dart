import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextEditingController emailController = TextEditingController();
TextEditingController passWordController = TextEditingController();


TextStyle headingText = const TextStyle(
    fontFamily: "Comfortaa", fontWeight: FontWeight.w400, fontSize: 36);

TextStyle normalText = const TextStyle(
    fontFamily: "Roboto_", fontWeight: FontWeight.w900, fontSize: 15);

TextField textField = TextField(
  controller: emailController,
  decoration: const InputDecoration(
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: Colors.black)),
    hintText: "Enter name",
    hintStyle: TextStyle(
        fontFamily: "Roboto_", fontWeight: FontWeight.w400, fontSize: 15),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: Colors.black)),
  ),
  cursorColor: Colors.black,
);

TextField passWordTextField = TextField(
  obscureText: true,
  controller: passWordController,
  decoration: const InputDecoration(
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: Colors.black)),
    hintText: "Enter password",
    hintStyle: TextStyle(
        fontFamily: "Roboto_", fontWeight: FontWeight.w400, fontSize: 15),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: Colors.black)),
  ),
  cursorColor: Colors.black,
);
