import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp1/constant/personal_chat.dart';
import 'package:whatsapp1/model/wp_chat.dart';

class ChatPage extends StatefulWidget {
  final String? name;
  final String? image;

  const ChatPage({Key? key, this.name, this.image}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController getText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: const Color(0xff0B6752),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Container(
              height: 50,
              color: Color(0xff0B6752),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(widget.image.toString()),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            widget.name.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.videocam,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    child: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Container(
                  child: ListView.builder(
                    itemCount: PersonalChat.chatList.length,
                    itemBuilder: (context,index){
                      WpChat model=PersonalChat.chatList[index];
                      return Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: model.id ==1?Colors.red:Colors.blue
                        ),
                      ); 
                    },
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, bottom: 10),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Form(
                        child: TextFormField(
                            controller: getText,
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black38,
                                ),
                                suffixIcon: Icon(
                                  Icons.camera_alt,
                                  color: Colors.black38,
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(),
                                hintText: 'Message',
                                hintStyle: TextStyle(color: Colors.white),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(),
                                    borderRadius: BorderRadius.circular(25)),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(22),
                                ),
                                contentPadding:
                                    EdgeInsets.only(top: 2, left: 5)))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
