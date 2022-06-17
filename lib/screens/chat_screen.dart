import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp1/constant/whats_list.dart';
import 'package:whatsapp1/model/chatscreen.dart';
import 'package:whatsapp1/screens/chat_page.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: WhatsAppList.chacd tList.length,
                  itemBuilder: (context,index) {
                    Chats model = WhatsAppList.chatList[index];
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage(
                          image: model.imageUrl,
                          name: model.name,
                        )));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 10,bottom: 10),
                        child: Row(
                          children: [
                           Expanded(child: Row(children: [
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: ClipOval(
                                 child: CachedNetworkImage(
                                   fit: BoxFit.cover,
                                   height: 50,
                                   width: 50,
                                   imageUrl: model.imageUrl ??"",
                                 ),
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(right: 10),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Container(
                                     child: Text(model.name??"", style: TextStyle(
                                         color: Colors.black,
                                         fontWeight: FontWeight.w500,
                                         fontSize: 18),),
                                   ),
                                   Container(
                                     margin: EdgeInsets.only(top: 2),
                                     child: Text(model.msg??"",
                                       style: TextStyle(color: Colors.black54),),
                                   )
                                 ],
                               ),
                             ),
                           ],)),
                            Container(
                                margin: EdgeInsets.only(right: 15),
                                child: Text(model.time??"",
                                  style: TextStyle(color: Colors.black54),))
                          ],
                        ),

                      ),
                    );
                  }
              ),
            ],
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.green,
        child:Icon(Icons.message_rounded),
      ),
    );
  }
}
