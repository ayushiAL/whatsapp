import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:whatsapp1/practice/screens/widgets/custom_elevated_button.dart';
import 'package:whatsapp1/practice/screens/widgets/heading_text.dart';
import 'package:whatsapp1/utils/size.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  List<String> imgList = [
    'https://cdn.pixabay.com/photo/2019/03/15/09/49/girl-4056684_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/12/15/16/25/clock-5834193__340.jpg',
    'https://cdn.pixabay.com/photo/2020/09/18/19/31/laptop-5582775_960_720.jpg',
    'https://media.istockphoto.com/photos/woman-kayaking-in-fjord-in-norway-picture-id1059380230?b=1&k=6&m=1059380230&s=170667a&w=0&h=kA_A_XrhZJjw2bo5jIJ7089-VktFK0h0I4OWDqaac0c=',
    'https://cdn.pixabay.com/photo/2019/11/05/00/53/cellular-4602489_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/02/12/10/29/christmas-2059698_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/01/29/17/09/snowboard-4803050_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/02/06/20/01/university-library-4825366_960_720.jpg',
    'https://cdn.pixabay.com/photo/2020/11/22/17/28/cat-5767334_960_720.jpg',
  ];

  // List<StaggeredTile> _cardTile = <StaggeredTile>[
  //   StaggeredTile.count(2, 3),
  //   StaggeredTile.count(2, 2),
  //   StaggeredTile.count(2, 3),
  //   StaggeredTile.count(2, 2),
  //   StaggeredTile.count(2, 3),
  //   StaggeredTile.count(2, 2),
  //   StaggeredTile.count(2, 3),
  //   StaggeredTile.count(2, 2),
  //   StaggeredTile.count(2, 3),
  //   StaggeredTile.count(2, 2),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.deepOrangeAccent,
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://blogger.googleusercontent.com/img/a/AVvXsEg4517n-Nh39lzAQuQaf10bhuUhKtKqoSrEXFTiv40T9J_7sN2byZm-UsuWBChCgSstZ3H8GV3t45tfIUx3dD1kE3QU8qMMAXDKUstH9qsVTwVv0xsyiNag6J2fSS_0e6mkaaocB3zsTisb9jZJTDREQiD93GkUSJht-cOLNZXrAL2XfLo7oHYjyHu_=w640-h400'),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 13),
                          child: HeadingText(text: 'Jane',)
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "SANE FRANCICO , CA",
                            style: TextStyle(
                                fontFamily: "Roboto_",
                                fontWeight: FontWeight.w900,
                                fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 13),
                          child:  CustomElevatedButton(
                            navigation: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SizedBox()));
                            },
                            text: 'FOLLOW JANE',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                              elevation: MaterialStateProperty.all(0),
                              fixedSize: MaterialStateProperty.all(
                                  Size(MediaQuery.of(context).size.width, 50)),
                              side: MaterialStateProperty.all(BorderSide(color: Colors.black)),
                            ),
                            child:const Text(
                              "MESSAGE",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Roboto_",
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                        // MasonryGridView.count(
                        //   shrinkWrap: true,
                        //   scrollDirection: Axis.vertical,
                        //   crossAxisCount: 2,
                        //   mainAxisSpacing: 4,
                        //   crossAxisSpacing: 4,
                        //   itemBuilder: (context, index) {
                        //     return Container(
                        //       height: 90,
                        //       width: 90,
                        //       decoration: const BoxDecoration(
                        //         image: DecorationImage(
                        //             image: NetworkImage(
                        //               'https://cdn.pixabay.com/photo/2019/03/15/09/49/girl-4056684_960_720.jpg',
                        //             ),
                        //             fit: BoxFit.cover),
                        //       ),
                        //     );
                        //   },
                        // ),
                        StaggeredGrid.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 4,
                          crossAxisSpacing: 4,
                          children: [
                            StaggeredGridTile.count(
                                crossAxisCellCount: 1,
                                mainAxisCellCount: 1,
                                child: Container(
                                  decoration: const BoxDecoration(
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
                                decoration: const BoxDecoration(
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
                                decoration: const BoxDecoration(
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
                                decoration: const BoxDecoration(
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
                                decoration: const BoxDecoration(
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
                                decoration: const BoxDecoration(
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
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
