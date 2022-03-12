import 'package:flutter/material.dart';
import 'package:whatsapp1/constant/status_list.dart';
import 'package:whatsapp1/model/status.dart';
import 'package:whatsapp1/screens/wp_status.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://i2.wp.com/allovershayari.com/wp-content/uploads/2021/05/Best-Dp-Girl-Attitude-AOS.jpg?resize=400%2C400&ssl=1'),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 28, left: 28),
                            height: 23,
                            width: 23,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: Color(0xff0B6752),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'My Status',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 3),
                              child: Text(
                                'Tap to add status updates',
                                style: TextStyle(color: Colors.black54),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  children: const [
                    Text(
                      'Recent updates',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: StatusList.recentStatusList.length,
                  itemBuilder: (context, index) {
                    RecentStatus model = StatusList.recentStatusList[index];
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>WpStatus(
                          image: model.image,
                          name: model.name,
                          time: model.time,
                        )));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(model.image ?? ""),
                                          fit: BoxFit.cover),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      )),
                                  height: 52,
                                  width: 52,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Color(0xff0B6752), width: 2),
                                ),
                                height: 62,
                                width: 62,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        model.name ?? "",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18),
                                      ),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Text(
                                          model.time ?? "",
                                          style: TextStyle(color: Colors.black54),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  children: [
                    Text(
                      'viewed updates',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: ViewStatusList.viewStatusList.length,
                  itemBuilder: (context, index) {
                    ViewStatus model = ViewStatusList.viewStatusList[index];
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(model.image ?? ""),
                                        fit: BoxFit.cover),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2,
                                    )),
                                height: 52,
                                width: 52,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color(0xff0B6752), width: 2),
                              ),
                              height: 62,
                              width: 62,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      model.name ?? "",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text(
                                        model.time ?? "",
                                        style: TextStyle(color: Colors.black54),
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
