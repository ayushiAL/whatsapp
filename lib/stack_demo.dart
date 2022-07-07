import 'package:flutter/material.dart';
import 'package:whatsapp1/utils/size_utils.dart';

class StackDemoScreen extends StatefulWidget {
  const StackDemoScreen({Key? key}) : super(key: key);

  @override
  _StackDemoScreenState createState() => _StackDemoScreenState();
}

class _StackDemoScreenState extends State<StackDemoScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.only(top: 15),
        child: Center(
          child: Stack(
            children: [
              Positioned.fill(child: Container()),
              Container(
                margin: EdgeInsets.only(left: 10),
                color: Colors.orange,
                height: 200,
                width: 120,
              ),
              Container(
                color: Colors.blueGrey,
                height: 100,
                width: 120,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                color: Colors.pink,
                height: 200,
                width: 120,
              ),
              Align(alignment: Alignment.center,child: Text('height:${SizeUtils.height(context, 0.1)}\n width:${SizeUtils.width(context, 0.1)}'),),
              Container(
                margin: EdgeInsets.only(left: 20),
                color: Colors.pink,
                height: (height/2),
                width: 120,
              )
            ],
          ),
        ),
      ),
    );
  }
}