import 'package:flutter/material.dart';
import 'package:whatsapp1/constant/call_list.dart';
import 'package:whatsapp1/model/calls.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
             itemCount: VCallsLists.callList.length,
              itemBuilder: (context,index) {
                Calls model= VCallsLists.callList[index];
                return Container(
                  child: Row(
                    children: [
                      Expanded(child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: 50,
                              width: 50,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(model.image ?? ""),
                              ),
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 240,
                                      child: Text(
                                        model.name ?? "", style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),),
                                    ),
                                  ],
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(top: 2),
                                          child: Icon(Icons.call_made,color: Colors.green,size: 17,)
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 2,left: 3),
                                        child: Text(model.time ?? "",
                                          style: TextStyle(color: Colors.black54),),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Icon(model.icon,color: Colors.green,),)
                    ],
                  ),

                );
              }
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.green,
        child:Icon(Icons.call),
      ),
    );
  }
}
