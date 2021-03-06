import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp1/practice/home_screen.dart';
import 'package:whatsapp1/practice/screens/account_screen.dart';
import 'package:whatsapp1/practice/screens/add_screen.dart';
import 'package:whatsapp1/practice/screens/msg_screen.dart';
import 'package:whatsapp1/practice/screens/search_screen.dart';

class Screens extends StatefulWidget {
  const Screens({Key? key}) : super(key: key);

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  String? photo;
  ImagePicker imagePicker = ImagePicker();
  int curIndex = 0;
  final pageList = [
    const HomeScreen(),
    const SearchScreen(),
    const AddScreen(),
    const ChatScreen(),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[curIndex],
      bottomNavigationBar: Container(
        height: 80,
        decoration:
            const BoxDecoration(border: Border(top: BorderSide(color: Colors.grey))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  curIndex = 0;
                });
              },
              child:const Icon(
                Icons.home_outlined,
                color: Colors.blueGrey,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  curIndex = 1;
                });
              },
              child:const Icon(
                Icons.search,
                color: Colors.blueGrey,
              ),
            ),
            InkWell(
              onTap: () async {
                final fileImage =
                    await imagePicker.pickImage(source: ImageSource.camera);
                setState(() {
                  photo = fileImage?.path;
                  curIndex = 2;
                });
              },
              child: Container(
                height: 55,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient:const LinearGradient(
                    colors: [Colors.pink, Colors.red],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child:const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  curIndex = 3;
                });
              },
              child:const Icon(
                Icons.maps_ugc,
                color: Colors.blueGrey,
              ),
            ),
            InkWell(
              onTap: ()  {
                setState(() {
                  curIndex = 4;
                });
              },
              child:const Icon(
                Icons.account_circle_outlined,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
