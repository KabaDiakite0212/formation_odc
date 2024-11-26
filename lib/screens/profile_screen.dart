import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formation_odc/widgets/basic_widgets.dart';
import 'package:formation_odc/widgets/custom_text.dart';

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
            radius: 100,
            foregroundImage: NetworkImage(
              "https://media.licdn.com/dms/image/v2/D5612AQEuQhFnyZJPGg/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1693065532807?e=2147483647&v=beta&t=jZmULs0JvxOIsXwyCiJII-QCdC5hYEcuzOpQ2pbnHXY",
            ),
          ),
          BasicWidgets.heightSize(20),
          CupertinoListTile(
            leading: Icon(Icons.edit_document),
            title: CustomText(
              title: "Modification des informations",
              color: Colors.blue,
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {},
            backgroundColor: Colors.grey.shade300,
          ),
            BasicWidgets.heightSize(10),
             CupertinoListTile(
            leading: Icon(Icons.edit_document),
            title: CustomText(
              title: "Modification des informations",
              color: Colors.blue,
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {},
            backgroundColor: Colors.grey.shade300,
          ),
            BasicWidgets.heightSize(10),
             CupertinoListTile(
            leading: Icon(Icons.edit_document),
            title: CustomText(
              title: "Modification des informations",
              color: Colors.blue,
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {},
            backgroundColor: Colors.grey.shade300,
          ),
            BasicWidgets.heightSize(10),
             CupertinoListTile(
            leading: Icon(Icons.edit_document),
            title: CustomText(
              title: "Modification des informations",
              color: Colors.blue,
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {},
            backgroundColor: Colors.grey.shade300,
          ),
            BasicWidgets.heightSize(10),
             CupertinoListTile(

              backgroundColorActivated:Colors.blue,

            leading: Icon(Icons.logout_outlined),
            title: CustomText(
              title: "Deconnexion",
              color: Colors.red,
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {},
            backgroundColor: Colors.grey.shade300,
          ),
        ],
      ),
    ));
  }
}
