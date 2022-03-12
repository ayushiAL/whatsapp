import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class WpStatus extends StatefulWidget {
  final String? image;
  final String? name;
  final String? time;

  const WpStatus({Key? key, this.image, this.name, this.time})
      : super(key: key);

  @override
  _WpStatusState createState() => _WpStatusState();
}

class _WpStatusState extends State<WpStatus> {
  double press=0;
  Timer? timer;
  double _value=0;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer?.cancel();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer(_value);
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        _value=1;
      },
      onLongPress: (){
        setState(() {
          timer?.cancel();
        });
      },
      onLongPressEnd: (details){
        startTimer(_value);
      },
      onLongPressUp: (){
        setState(() {});
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              LinearProgressIndicator(
                minHeight: 2,
                backgroundColor: Colors.grey[800],
                value: (_value)/15,
                valueColor:  AlwaysStoppedAnimation<Color>(Colors.white),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 10),
                child: Row(children: [
                 Expanded(child: Row(
                   children: [
                     Container(
                       child: Icon(Icons.arrow_back,color: Colors.white,),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(12),
                       child: ClipOval(
                         child: CachedNetworkImage(
                           fit: BoxFit.cover,
                           height: 50,
                           width: 50,
                           imageUrl: widget.image.toString(),
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
                             child: Text(
                               widget.name.toString(),
                               style: TextStyle(
                                   color: Colors.white,
                                   fontWeight: FontWeight.w500,
                                   fontSize: 18),
                             ),
                           ),
                           Container(
                             margin: EdgeInsets.only(top: 2),
                             child: Text(
                               widget.time.toString(),
                               style: TextStyle(color: Colors.white),
                             ),
                           )
                         ],
                       ),
                     ),
                   ],
                 )),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.more_vert,color: Colors.white,
                    ),
                  )
                ]),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage('https://funkylife.in/wp-content/uploads/2021/07/whatsapp-status-15.jpg'),
                  fit: BoxFit.cover)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void startTimer(double value) {
    timer= Timer.periodic( Duration(milliseconds: 2), (timer) {
      if(_value<15){
        setState(() {
          _value=_value+0.01;
        });
      }else{
        Navigator.maybePop(context);
      }
    });
  }
}

