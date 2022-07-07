import 'package:flutter/material.dart';
import 'package:whatsapp1/utils/size.dart';

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
                "Log in",
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
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(6)),
              child: const Text(
                "LOG IN",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Roboto_",
                    fontWeight: FontWeight.w900,
                    fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
