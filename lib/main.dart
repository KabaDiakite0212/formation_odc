import 'package:flutter/cupertino.dart';
import 'package:formation_odc/screens/detail_product_screen.dart';
import 'package:formation_odc/screens/product_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter iOS',
      home: ProductScreen(),
      // home: DetailProductScreen(),
    );
  }
}
