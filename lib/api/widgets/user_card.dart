import 'package:flutter/material.dart';
import 'package:formation_odc/widgets/basic_widgets.dart';
import 'package:formation_odc/widgets/custom_text.dart';

class UserCard extends StatelessWidget {
  const UserCard(
      {super.key,
      required this.name,
      required this.address,
      required this.phone,
      required this.email,
      required this.avatar});

  final String name;
  final String address;
  final String phone;
  final String email;
  final String avatar;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey.shade300),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  avatar,
                ),
              ),
              BasicWidgets.widthSize(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.person,
                      ),
                      BasicWidgets.widthSize(5),
                      CustomText(
                        title: name,
                        fontSize: 14,
                        color: Colors.grey.shade700,
                      ),
                    ],
                  ),
                  BasicWidgets.heightSize(5),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_city,
                      ),
                      BasicWidgets.widthSize(5),
                      CustomText(
                        title: address,
                        fontSize: 14,
                        color: Colors.grey.shade700,
                      ),
                    ],
                  ),
                  BasicWidgets.heightSize(5),
                  Row(
                    children: [
                      const Icon(
                        Icons.phone,
                      ),
                      BasicWidgets.widthSize(5),
                      CustomText(
                        title: phone,
                        fontSize: 14,
                        color: Colors.grey.shade700,
                      ),
                    ],
                  ),
                  BasicWidgets.heightSize(5),
                  SizedBox(
                    width: 250,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.email,
                        ),
                        BasicWidgets.widthSize(5),
                        Flexible(
                          child: CustomText(
                            title: email,
                            fontSize: 14,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_circle_right_outlined,
              size: 50,
            ),
          ),
        ],
      ),
    );
  }
}
