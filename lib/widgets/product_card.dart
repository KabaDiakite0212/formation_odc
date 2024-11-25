import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formation_odc/screens/detail_product_screen.dart';
import 'package:formation_odc/widgets/custom_text.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.title,
      required this.description,
      required this.image,
      required this.price});

  final String title;
  final String description;
  final String image;
  final int price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.push(context, CupertinoModalPopupRoute(builder: (context) {
        return  DetailProductScreen(

          title: title,
          description: description,
          price: price,
          image: image,
        );
      })),
      child: Container(
        height: 200,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
              child: Image.network(
                image,
                height: 200,
                width: 180,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 205,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomText(
                    title: title,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  CustomText(
                    title: description,
                    fontSize: 14,
                    color: Colors.grey.shade700,
                    maxLines: 5,
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
                          onPressed: () => {}),
                      CupertinoButton.filled(
                          padding: const EdgeInsets.all(8.0),
                          minSize: 20,
                          child: const CustomText(
                            title: 'Valider',
                            fontSize: 16,
                          ),
                          onPressed: () => {}),
                    ],
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
