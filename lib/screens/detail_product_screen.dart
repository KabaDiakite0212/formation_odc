import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formation_odc/widgets/custom_text.dart';

class DetailProductScreen extends StatelessWidget {
  const DetailProductScreen(
      {super.key,
      required this.title,
      required this.description,
      required this.price,
      required this.image});

  final String title;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            FadeInImage.assetNetwork(
              height: 350,
              width: MediaQuery.of(context).size.width,
              placeholder: "assets/noimage.png",
              fit: BoxFit.cover,
              image:
                  image,
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      title: title,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomText(
                      title: description,
                      fontSize: 18,
                      color: Colors.grey.shade700,
                      maxLines: 5,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.money,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        CustomText(
                          title: "$price GNF",
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CupertinoButton(
                            minSize: 20,
                            padding: const EdgeInsets.all(8.0),
                            child: const CustomText(
                              title: 'Annuler',
                              fontSize: 16,
                              color: CupertinoColors.systemRed,
                            ),
                            onPressed: () => Navigator.pop(context)),
                        CupertinoButton.filled(
                            padding: const EdgeInsets.all(8.0),
                            minSize: 20,
                            child: const CustomText(
                              title: 'Commander',
                              fontSize: 16,
                            ),
                            onPressed: () => {}),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
