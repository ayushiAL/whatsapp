import 'package:flutter/material.dart';
import 'package:whatsapp1/practice/login_screen.dart';
import 'package:whatsapp1/practice/register_screen.dart';
import 'package:whatsapp1/utils/size.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: height * 0.85,
                width: double.infinity,
                // color: Colors.green,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Rectangle.png"),
                      fit: BoxFit.cover),
                ),
                child: Center(
                  child: Container(
                    height: 54,
                    width: 206,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/photo.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LogInScreen()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 60,
                          // width: 185,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 2),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6))),
                          child: Text(
                            "LOG IN",
                            style: normalText,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterScreen()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 60,
                          // width: 185,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border.all(color: Colors.black, width: 2),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6))),
                          child: const Text(
                            "REGISTER",
                            style: TextStyle(
                                fontFamily: 'Roboto_',
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
