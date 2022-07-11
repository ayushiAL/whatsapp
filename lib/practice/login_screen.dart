import 'package:flutter/material.dart';
import 'package:whatsapp1/practice/home_screen.dart';
import 'package:whatsapp1/practice/screens/screens.dart';
import 'package:whatsapp1/practice/screens/widgets/comman_appBar.dart';
import 'package:whatsapp1/practice/screens/widgets/custom_elevated_button.dart';
import 'package:whatsapp1/practice/screens/widgets/input_textfield.dart';
import 'package:whatsapp1/utils/size.dart';

import 'screens/widgets/heading_text.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CommanAppBar(context, "", true, false),
      body: Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              // color: Colors.red,
              child: HeadingText( text: 'Log in',),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            InputTextField(
                isObSecureText: false,
                hintText: "Enter name",
                controller: emailController),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            InputTextField(
                isObSecureText: true,
                hintText: "Enter password",
                controller: passWordController),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: CustomElevatedButton(
                navigation: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Screens()));
                },
                text: 'LOG IN',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

