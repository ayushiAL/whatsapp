import 'package:flutter/material.dart';
import 'package:whatsapp1/practice/screens/widgets/heading_text.dart';

PreferredSizeWidget CommanAppBar(
    BuildContext context, String title, bool isBackIcon, bool isChat) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: isBackIcon
        ? GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ))
        : null,
    title: isChat
        ? Text(
            title,
            style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.normal),
          )
        : Padding(
            padding: const EdgeInsets.only(top: 12),
            child: HeadingText(
              text: title,
            ),
          ),
    centerTitle: isChat ? true : false,
    automaticallyImplyLeading: false,
  );
}
