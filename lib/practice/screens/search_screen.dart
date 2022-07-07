import 'package:flutter/material.dart';
import 'package:whatsapp1/utils/size.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> imgList = [
    'https://m.media-amazon.com/images/M/MV5BYzUwYWE5ZDAtYWMxZi00NmQ4LTkyMWMtMjk2MzQ5YzI1NDhmXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg',
    'https://images.unsplash.com/photo-1593085512500-5d55148d6f0d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80',
    'https://i.pinimg.com/564x/4c/47/33/4c4733f46b740396667b7856f9e0d0d1.jpg',
    'https://images.unsplash.com/photo-1615920292087-6d9f818e9e13?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmF0dXJhbCUyMGJlYXV0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
    'https://scx2.b-cdn.net/gfx/news/hires/2019/2-nature.jpg',
    'https://images-na.ssl-images-amazon.com/images/I/41TkrkdrpNL.jpg',
    'https://images.unsplash.com/photo-1587402092301-725e37c70fd8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHVwcHklMjBkb2d8ZW58MHx8MHx8&w=1000&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 45,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Search",
                    style: headingText,
                  )),
              const SizedBox(
                height: 30,
              ),
              Container(
                  child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black)),
                  hintText: "Search all photos",
                  hintStyle: TextStyle(
                      fontFamily: "Roboto_",
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.black)),
                ),
                cursorColor: Colors.black,
              )),
              const SizedBox(
                height: 30,
              ),
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                  ),
                  shrinkWrap: true,
                  itemCount: imgList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 270,
                      width: 130,
                      color: Colors.black,
                      child: Container(
                          padding: EdgeInsets.only(right: 50, bottom: 8),
                          //  margin: EdgeInsets.only(right: 6,bottom: 6),
                          height: 130,
                          width: 140,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(imgList[index]),
                                fit: BoxFit.cover),
                            // border: Border.all(
                            //     color: Colors.black, width: 1),
                          )),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
