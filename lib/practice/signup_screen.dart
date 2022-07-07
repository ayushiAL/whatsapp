import 'package:flutter/material.dart';
import 'package:whatsapp1/practice/home_screen.dart';
import 'package:whatsapp1/practice/screens/screens.dart';
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
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black)),
                  hintText: "Enter name",
                  hintStyle: TextStyle(
                      fontFamily: "Roboto_",
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black)),
                ),
                cursorColor: Colors.black,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Screens()));
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                    color: Colors.black, borderRadius: BorderRadius.circular(6)),
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Roboto_",
                      fontWeight: FontWeight.w900,
                      fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              child: const Text(
                "By signing up,you agree to photos Terms of service and privacy policy",
                style: TextStyle(
                    fontFamily: "Roboto_",
                    fontWeight: FontWeight.w400,
                    fontSize: 15),
              ),
            )
          ]
        ),
      ),
    );
  }
}
