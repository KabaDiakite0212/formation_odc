import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formation_odc/screens/animation_widgets_screen.dart';
import 'package:formation_odc/screens/date_time_picker_screen.dart';
import 'package:formation_odc/screens/detail_product_screen.dart';
import 'package:formation_odc/screens/image_picker_screen.dart';
import 'package:formation_odc/screens/navigation_bar_screen.dart';
import 'package:formation_odc/screens/product_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter iOS',
    
      home: DateTimePickerScreen(),
      // home: DetailProductScreen(),
      // home: ImagePickerScreen(),
      // home: AnimationWidgetsScreen(),
    );
  }
}
