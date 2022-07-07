import 'package:flutter/material.dart';
import 'package:grid_staggered_lite/grid_staggered_lite.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 45,
            ),
            Container(
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
                  const SizedBox(
                    height: 13,
                  ),
                  Text(
                    "Jane",
                    style: headingText,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "SANE FRANCICO , CA",
                    style: TextStyle(
                        fontFamily: "Roboto_",
                        fontWeight: FontWeight.w900,
                        fontSize: 12),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    // width: 185,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: const Text(
                      "FOLLOW JANE",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Roboto_",
                          fontWeight: FontWeight.w900,
                          fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    // width: 185,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(6))),
                    child: Text(
                      "MESSAGE",
                      style: normalText,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: StaggeredGridView.countBuilder(
                        crossAxisCount: imgList.length,
                        shrinkWrap: true,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 15,
                        itemBuilder: (context, index) {
                          return Container();
                        },
                        staggeredTileBuilder:(int index){
                          return StaggeredTile.count(1, index.isEven?2:3);
                    } ),
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
