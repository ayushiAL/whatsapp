import 'package:flutter/material.dart';

import '../../utils/size.dart';

class DiscoverScreen extends StatefulWidget {
  final String? image;
  final String? photo;
  final String? name;
  final String? uname;

  const DiscoverScreen(
      {Key? key, this.image, this.photo, this.name, this.uname})
      : super(key: key);

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(widget.photo ?? ""),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            widget.image ?? "",
                          ),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                    height: 45,
                    width: 45,
                    margin: EdgeInsets.only(top: 15),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 19, top: 13),
                            child: Text(
                              widget.name ?? "",
                              style: const TextStyle(
                                  fontFamily: "Roboto_",
                                  fontWeight: FontWeight.w900,
                                  fontSize: 15,
                                  color: Colors.white),
                            )),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 19, top: 2, right: 15),
                          child: Text(
                            widget.uname ?? "",
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: "Roboto_",
                                fontWeight: FontWeight.w400,
                                fontSize: 13),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin:const EdgeInsets.only(top: 18, right: 20),
                      child: const Icon(
                        Icons.clear,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
