import 'package:flutter/material.dart';
import 'package:whatsapp1/practice/models/chat.dart';
import 'package:whatsapp1/practice/models/person_chat.dart';
import 'package:whatsapp1/practice/screens/person_chat.dart';
import 'package:whatsapp1/utils/size.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 10),
                alignment: Alignment.center,
                child: const Text(
                  "Chats",
                  style: TextStyle(fontSize: 25),
                ),
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black12))),
              ),
              ListView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: ChatList.chatList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    ChatModel model = ChatList.chatList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PersonChat(
                                      name: model.name,
                                      img: model.img,
                                    )));
                      },
                      child: Container(
                        padding: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.black12))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                      model.img ?? "",
                                    ),
                                    fit: BoxFit.cover),
                                shape: BoxShape.circle,
                              ),
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.only(left: 19, top: 15),
                            ),
                            Flexible(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 19, top: 13),
                                      child: Text(model.name ?? "",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "Roboto_",
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15)),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 19, top: 2, right: 15),
                                      child: Text(
                                        model.msg ?? "",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Roboto_",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
