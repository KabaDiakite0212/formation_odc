import 'package:flutter/cupertino.dart';
import 'package:formation_odc/api/controllers/user_controller.dart';
import 'package:formation_odc/api/widgets/user_card.dart';
import 'package:formation_odc/widgets/custom_text.dart';
import 'package:get/get.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  UserController listUsers = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: CustomText(
          title: "State Managment",
          color: CupertinoColors.activeBlue,
        ),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Obx(
          () {
            if (listUsers.isLoading.value) {
              return const Center(
                child: CupertinoActivityIndicator(
                    radius: 20.0, color: CupertinoColors.activeBlue),
              );
            } else if (listUsers.users.isNotEmpty) {
              return ListView.builder(
                itemCount: listUsers.users.length,
                itemBuilder: (context, index) {
                  return UserCard(
                    name: listUsers.users[index]["name"],
                    address: listUsers.users[index]["address"],
                    phone: listUsers.users[index]["phone"],
                    email: listUsers.users[index]["email"],
                    avatar: listUsers.users[index]["avatar"],
                  );
                },
              );
            } else if (listUsers.error.isNotEmpty) {
              return Center(
                child: CustomText(
                  title: listUsers.error.toString(),
                ),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
