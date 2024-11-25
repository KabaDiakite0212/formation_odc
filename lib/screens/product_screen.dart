import 'package:flutter/cupertino.dart';
import 'package:formation_odc/data/get_products.dart';
import 'package:formation_odc/widgets/product_card.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) => ProductCard(
          title: products[index].title,
          description: products[index].description,
          price: products[index].price,
          image: products[index].image,
        ),
      ),
    );
  }
}
