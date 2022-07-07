import 'package:flutter/material.dart';
import 'package:whatsapp1/practice/signup_screen.dart';
import 'package:whatsapp1/utils/size.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              alignment: Alignment.centerLeft,
              // color: Colors.red,
              child: Text(
                "Register",
                style: headingText,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              child: textField,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              child: passWordTextField,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(6)),
                child: const Text(
                  "NEXT",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Roboto_",
                      fontWeight: FontWeight.w900,
                      fontSize: 15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
