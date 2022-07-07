// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp1/pageview_demo.dart';
import 'package:whatsapp1/practice/first_screen.dart';
import 'package:whatsapp1/screens/calls_screen.dart';
import 'package:whatsapp1/screens/chat_screen.dart';
import 'package:whatsapp1/screens/status_screen.dart';
import 'package:whatsapp1/stack_demo.dart';

void main() {
  runApp(const MaterialApp(
    home: FirstScreen(),
    debugShowCheckedModeBanner: false,
  ));
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

}

class WhatsApp extends StatefulWidget {
  const WhatsApp({Key key}) : super(key: key);

  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  PageController pageController = PageController();

  // List<Widget> currentList = [
  //   ChatScreen(),
  //   StatusScreen(),
  //   CallsScreen(),
  // ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Color(0xff0B6752),
        ),
        body: Container(
            child: Column(children: [
          Container(
            height: 110,
            color: Color(0xff0B6752),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 20, top: 15),
                        child: Text(
                          'WhatsApp',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 15),
                              child: Icon(Icons.search, color: Colors.white),
                            ),
                            PopupMenuButton(
                              itemBuilder: (context) => [
                                PopupMenuItem(
                                  child: Text('New group'),
                                  value: 1,
                                ),
                                PopupMenuItem(
                                  child: Text('New broadcast'),
                                  value: 2,
                                ),
                                PopupMenuItem(
                                  child: Text('Linked devices'),
                                  value: 3,
                                ),
                                PopupMenuItem(
                                  child: Text('Starred messages'),
                                  value: 4,
                                ),
                                PopupMenuItem(
                                  child: Text('Settings'),
                                  value: 5,
                                )
                              ],
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 15, right: 20),
                                child: Icon(Icons.more_vert,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 46,
                  margin: EdgeInsets.only(top: 25, left: 10, right: 15),
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                pageController.animateToPage(0,
                                    duration: Duration(milliseconds: 10),
                                    curve: Curves.easeIn);
                              });
                            },
                            child: Container(
                              height: 45,
                              alignment: Alignment.center,
                              child: Text(
                                'CHATS',
                                style: currentIndex == 0
                                    ? TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)
                                    : TextStyle(
                                        color: Colors.white54,
                                        fontWeight: FontWeight.bold),
                              ),
                              decoration: BoxDecoration(
                                  border: currentIndex == 0
                                      ? Border(
                                          bottom: BorderSide(
                                              color: Colors.white, width: 2))
                                      : Border()),
                            )),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              pageController.animateToPage(1,
                                  duration: Duration(milliseconds: 10),
                                  curve: Curves.easeIn);
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 45,
                            child: Text(
                              'STATUS',
                              style: currentIndex == 1
                                  ? TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)
                                  : TextStyle(
                                      color: Colors.white54,
                                      fontWeight: FontWeight.bold),
                            ),
                            decoration: BoxDecoration(
                                border: currentIndex == 1
                                    ? Border(
                                        bottom: BorderSide(
                                            color: Colors.white, width: 2))
                                    : Border()),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              pageController.animateToPage(2,
                                  duration: Duration(milliseconds: 10),
                                  curve: Curves.easeIn);
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 45,
                            child: Text('CALLS',
                                style: currentIndex == 2
                                    ? TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)
                                    : TextStyle(
                                        color: Colors.white54,
                                        fontWeight: FontWeight.bold)),
                            decoration: BoxDecoration(
                                border: currentIndex == 2
                                    ? Border(
                                        bottom: BorderSide(
                                            color: Colors.white, width: 2))
                                    : Border()),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: PageView(
            controller: pageController,
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            children: const [
              ChatScreen(),
              StatusScreen(),
              CallsScreen(),
            ],
          ))
        ])));
  }
}
