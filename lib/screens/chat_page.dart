import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp1/constant/personal_chat.dart';
import 'package:whatsapp1/model/wp_chat.dart';

class ChatPage extends StatefulWidget {
  final String? name;
  final String? img;
  const ChatPage({Key? key,this.name,this.img}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  String _value="";
  bool isEmpty=true;
  TextEditingController getText=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Color(0XFF0b1316),
      ),
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(fit: BoxFit.cover,image: NetworkImage("https://wallpaperaccess.com/full/2224368.png",),)
        ),

        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 0.145,
              color: Color(0XFF171f25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.015),
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(widget.img.toString()),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle,
                          ),
                          height: MediaQuery.of(context).size.width * 0.1,
                          width: MediaQuery.of(context).size.width * 0.1,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.025,
                              top: MediaQuery.of(context).size.width * 0.02),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  widget.name.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 17.5),
                                ),
                              ),
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.width * 0.006,
                              ),
                              Container(
                                child: Text(
                                  "last seen today at 10:54 pm",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              )
                            ],
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
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05,
                        right: MediaQuery.of(context).size.width * 0.05),
                    child: Icon(
                      Icons.call,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.015),
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                      size: 22,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                reverse: true,
                scrollDirection: Axis.vertical,
                child: Container(
                  // color: Color(0XFF015c4b),
                    child: Container(
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: PersonalChat.chatList.length,
                          itemBuilder: (context, index) {
                            WpChat model=PersonalChat.chatList[index];
                            return Container(
                              margin: EdgeInsets.only(bottom: 5 ,top: 10,left: model.id == 1 ? 10 : 0,right: model.id == 2 ? 10 : 0),
                              alignment: model.id ==1 ? Alignment.centerLeft : Alignment.centerRight,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: model.id == 1 ? Color(0XFF171f25) :Color(0XFF075E54),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                                child: Text(model.chat.toString(),style: TextStyle(fontSize: 17,color: Colors.white),),
                              ),
                            );
                          }),
                    )),
              ),
            ),
            Container(

              margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.width * 0.011),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          horizontal:
                          MediaQuery.of(context).size.width * 0.008),
                      height: MediaQuery.of(context).size.width * 0.119,
                      child: Form(
                        child: TextFormField(
                          onChanged: (value){
                            setState(() {
                              getText.text.isEmpty== true ? isEmpty=true : isEmpty=false;
                            });
                          },
                          controller: getText,
                          onFieldSubmitted: (value){
                            setState(() {
                              _value=value;
                              PersonalChat.chatList.add(WpChat(id: 2,chat: _value));
                              getText.clear();
                            });
                          },
                          cursorColor: Color(0XFF075E54),

                          cursorHeight: 20,
                          showCursor: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top: 2),
                              suffixIcon: Icon(Icons.camera_alt,color: Colors.white54,),
                              prefixIcon: Icon(
                                Icons.search_sharp,
                                color: Colors.white54,
                              ),
                              hintText: "Message",
                              hintStyle: TextStyle(
                                  color: Colors.white54, fontSize: 17),
                              filled: true,
                              fillColor: Color(0XFF0b1316),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ),
                  ),
                  isEmpty== true ?Container(
                    margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.008),
                    child: Icon(
                      Icons.mic,
                      color: Colors.white,
                    ),
                    height: MediaQuery.of(context).size.width * 0.118,
                    width: MediaQuery.of(context).size.width * 0.118,
                    decoration: BoxDecoration(
                        color: Color(0XFF128C7E), shape: BoxShape.circle),
                  ):InkWell(
                    onTap: (){
                      setState(() {
                        _value=getText.text.toString();
                        if(_value.isNotEmpty){
                          PersonalChat.chatList.add(WpChat(id: 2,chat: _value));
                        }
                        getText.clear();
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.008),
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                      height: MediaQuery.of(context).size.width * 0.118,
                      width: MediaQuery.of(context).size.width * 0.118,
                      decoration: BoxDecoration(
                          color: Color(0XFF128C7E), shape: BoxShape.circle),
                    ),
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