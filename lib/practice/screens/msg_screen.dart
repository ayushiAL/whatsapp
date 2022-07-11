import 'package:flutter/material.dart';
import 'package:whatsapp1/practice/models/chat.dart';
import 'package:whatsapp1/practice/models/person_chat.dart';
import 'package:whatsapp1/practice/screens/person_chat.dart';
import 'package:whatsapp1/practice/screens/widgets/comman_appBar.dart';
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
      appBar: CommanAppBar(context, "Chats", false, true),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
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
                          ),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black12),
                        ),
                      ),
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
                            margin: const EdgeInsets.only(left: 19, top: 15),
                          ),
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 19,top: 15),
                                  child: Text(model.name ?? "",
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontFamily: "Roboto_",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 19,top: 2,right: 15),
                                  child: Text(
                                    model.msg ?? "",
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Roboto_",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13),
                                  ),
                                )
                              ],
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
    );
  }
}
