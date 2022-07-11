import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp1/practice/models/person_chat.dart';
import 'package:whatsapp1/practice/screens/widgets/comman_appBar.dart';

class PersonChat extends StatefulWidget {
  final String? img;
  final String? name;

  const PersonChat({Key? key, this.img, this.name}) : super(key: key);

  @override
  State<PersonChat> createState() => _PersonChatState();
}

class _PersonChatState extends State<PersonChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommanAppBar(context, widget.name.toString(), true, true),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black12))),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: PersonChatList.personChatList.length,
                itemBuilder: (context, index) {
                  PersonChatModel model = PersonChatList.personChatList[index];
                  return Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      model.id == 1
                          ? Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  image: NetworkImage(widget.img.toString()),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          : Container(),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.all(25),
                          margin: EdgeInsets.only(
                              bottom: 5,
                              top: 15,
                              left: model.id == 1 ? 5 : 30,
                              right: model.id == 2 ? 5 : 30),
                          child: Text(
                            model.msg.toString(),
                            style: const TextStyle(
                              fontFamily: "Roboto_",
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                      model.id == 2
                          ? Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://blogger.googleusercontent.com/img/a/AVvXsEg4517n-Nh39lzAQuQaf10bhuUhKtKqoSrEXFTiv40T9J_7sN2byZm-UsuWBChCgSstZ3H8GV3t45tfIUx3dD1kE3QU8qMMAXDKUstH9qsVTwVv0xsyiNag6J2fSS_0e6mkaaocB3zsTisb9jZJTDREQiD93GkUSJht-cOLNZXrAL2XfLo7oHYjyHu_=w640-h400'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          : Container()
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }
}
