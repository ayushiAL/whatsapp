import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:whatsapp1/practice/models/discover.dart';
import 'package:whatsapp1/practice/screens/discover_screen.dart';
import 'package:whatsapp1/utils/size.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> image = [
    'https://cdn.pixabay.com/photo/2019/03/15/09/49/girl-4056684_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/15/16/25/clock-5834193__340.jpg',
    'https://cdn.pixabay.com/photo/2020/09/18/19/31/laptop-5582775_960_720.jpg',
    'https://media.istockphoto.com/photos/woman-kayaking-in-fjord-in-norway-picture-id1059380230?b=1&k=6&m=1059380230&s=170667a&w=0&h=kA_A_XrhZJjw2bo5jIJ7089-VktFK0h0I4OWDqaac0c=',
    'https://cdn.pixabay.com/photo/2019/11/05/00/53/cellular-4602489_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/02/12/10/29/christmas-2059698_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/01/29/17/09/snowboard-4803050_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/02/06/20/01/university-library-4825366_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/11/22/17/28/cat-5767334_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/13/16/22/snow-5828736_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/09/09/27/women-5816861_960_720.jpg',
  ];
  PageController controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Discover",
                  style: headingText,
                )),
            const SizedBox(
              height: 30,
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "WHAT'S NEW TODAY",
                  style: normalText,
                )),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: PageView.builder(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: DiscoverList.discoverList.length,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    DiscoverModel model = DiscoverList.discoverList[index];
                    return Column(
                      children: [
                        InkWell(
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.3,
                            imageUrl: model.photo ?? "",
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DiscoverScreen(
                                          image: model.image,
                                          photo: model.photo,
                                          name: model.name,
                                          uname: model.uname,
                                        )));
                          },
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: ClipOval(
                                child: CachedNetworkImage(
                                  fit: BoxFit.cover,
                                  width: 45,
                                  height: 45,
                                  imageUrl: model.image ?? "",
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 19, top: 13),
                                  child:
                                      Text(model.name ?? "", style: normalText),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      left: 19, top: 2, right: 15),
                                  child: Text(
                                    model.uname ?? "",
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Roboto_",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    );
                  }),
            ),
            const SizedBox(
              height: 17,
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "BROWSE ALL",
                  style: normalText,
                )),
            const SizedBox(
              height: 15,
            ),
            StaggeredGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: Container(
                      decoration:const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2019/03/15/09/49/girl-4056684_960_720.jpg',
                            ),
                            fit: BoxFit.cover),
                      ),
                    )),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child: Container(
                    decoration:const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2020/12/15/16/25/clock-5834193__340.jpg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Container(
                    decoration:const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2020/09/18/19/31/laptop-5582775_960_720.jpg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child: Container(
                    decoration:const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2020/11/22/17/28/cat-5767334_960_720.jpg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Container(
                    decoration:const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2017/02/12/10/29/christmas-2059698_960_720.jpg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Container(
                    decoration:const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2020/12/09/09/27/women-5816861_960_720.jpg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            )
            // StaggeredGridView.countBuilder(
            //   crossAxisCount: 2,
            //   crossAxisSpacing: 10,
            //   mainAxisSpacing: 12,
            //   itemCount: image.length,
            //   shrinkWrap: true,
            //   itemBuilder: (context, index) {
            //     return Container(
            //       decoration: BoxDecoration(
            //         image: DecorationImage(
            //             image: NetworkImage(image[index]), fit: BoxFit.cover),
            //       ),
            //     );
            //   },
            //   staggeredTileBuilder: (int index) {
            //     return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
            //   },
            // ),
          ],
        ),
      ),
    ));
  }
}
