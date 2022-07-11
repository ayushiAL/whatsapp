import 'package:flutter/material.dart';
import 'package:whatsapp1/practice/home_screen.dart';
import 'package:whatsapp1/practice/screens/screens.dart';
import 'package:whatsapp1/practice/screens/widgets/comman_appBar.dart';
import 'package:whatsapp1/practice/screens/widgets/custom_elevated_button.dart';
import 'package:whatsapp1/practice/screens/widgets/heading_text.dart';
import 'package:whatsapp1/practice/screens/widgets/input_textfield.dart';
import 'package:whatsapp1/utils/size.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CommanAppBar(context, "", true, false),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(children: [
          Container(
              alignment: Alignment.centerLeft,
              // color: Colors.red,
              child: HeadingText(
                text: 'Register',
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          InputTextField(
            hintText: "Enter name",
            isObSecureText: false,
            controller: nameController,
          ),
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
              text: 'SIGN UP',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.04,
            ),
            child: const Text(
              "By signing up,you agree to photos Terms of service and privacy policy",
              style: TextStyle(
                  fontFamily: "Roboto_",
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
          )
        ]),
      ),
    );
  }
}
