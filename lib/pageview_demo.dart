import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  List icons = [
    Icons.favorite,
    Icons.timer,
    Icons.more,
    Icons.cancel,
  ];
  List name = ['ayushi', 'dishat', 'pooja', 'dhulli'];
  PageController controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40))),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(25),
                            bottomLeft: Radius.circular(20))),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    controller: controller,
                    itemCount: icons.length,
                    itemBuilder: (context, index) {
                      return Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.6,
                            alignment: Alignment.center,
                            child: Icon(
                              icons[index],
                              color: Colors.black,
                              size: 180,
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 28),
                            alignment: Alignment.center,
                            child: Text(
                              name[index],
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30),
                            ),
                          )
                        ],
                      );
                    }),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      controller.animateToPage(currentPage - 1,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    });
                  },
                  child: Container(
                    width: 50,
                    margin: EdgeInsets.only(left: 15),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: icons.length,
                    effect: const WormEffect(
                        spacing: 6,
                        // radius:  4.0,
                        dotWidth: 16,
                        dotHeight: 16,
                        dotColor: Colors.grey,
                        activeDotColor: Colors.blue),
                  ),
                  // DotsIndicator(dotsCount: icons.length,
// position: currentPage,
// decorator: DotsDecorator(
//   activeColor: Colors.blue,
//   color: Colors.grey
// ),)
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      controller.animateToPage(currentPage + 1,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    });
                  },
                  child: Container(
                    width: 50,
                    margin: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
