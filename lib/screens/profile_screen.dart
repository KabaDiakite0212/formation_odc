import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          CircleAvatar(
            // backgroundColor: Colors.black,
            radius: 100,
            // child: FadeInImage.assetNetwork(
            //   height: 350,
            //   width: MediaQuery.of(context).size.width,
            //   placeholder: "assets/noimage.png",
            //   fit: BoxFit.cover,
            //   image:
            //       "https://media.licdn.com/dms/image/v2/D5612AQEuQhFnyZJPGg/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1693065532807?e=2147483647&v=beta&t=jZmULs0JvxOIsXwyCiJII-QCdC5hYEcuzOpQ2pbnHXY",
            // ),
            foregroundImage: NetworkImage("https://media.licdn.com/dms/image/v2/D5612AQEuQhFnyZJPGg/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1693065532807?e=2147483647&v=beta&t=jZmULs0JvxOIsXwyCiJII-QCdC5hYEcuzOpQ2pbnHXY",),
          )
        ],
      ),
    ));
  }
}
