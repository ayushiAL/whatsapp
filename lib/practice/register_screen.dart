import 'package:flutter/material.dart';
import 'package:whatsapp1/practice/screens/widgets/comman_appBar.dart';
import 'package:whatsapp1/practice/screens/widgets/custom_elevated_button.dart';
import 'package:whatsapp1/practice/screens/widgets/heading_text.dart';
import 'package:whatsapp1/practice/screens/widgets/input_textfield.dart';
import 'package:whatsapp1/practice/signup_screen.dart';
import 'package:whatsapp1/utils/size.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CommanAppBar(context, "", true, false),
      body: Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              // color: Colors.red,
              child: HeadingText(
                text: 'Register',
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            InputTextField(
              isObSecureText: false,
              hintText: "Enter name",
              controller: emailController,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            InputTextField(
              isObSecureText: true,
              hintText: "Enter passWord",
              controller: passWordController,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: CustomElevatedButton(
                  navigation: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                  },
                  text: 'REGISTER',
                )),
          ],
        ),
      ),
    );
  }
}
