import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:formation_odc/widgets/basic_widgets.dart';

class AnimationWidgetsScreen extends StatefulWidget {
  const AnimationWidgetsScreen({super.key});

  @override
  State<AnimationWidgetsScreen> createState() => _AnimationWidgetsScreenState();
}

class _AnimationWidgetsScreenState extends State<AnimationWidgetsScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BounceIn(
              preferences: AnimationPreferences(duration: Duration(seconds: 2)),
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://files.refurbed.com/ii/huawei-mate-50-pro-1672133804.jpg?t=fitdesign&h=600&w=800",
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            BasicWidgets.heightSize(20),
            SlideInLeft(
              preferences: AnimationPreferences(duration: Duration(seconds: 2)),
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://files.refurbed.com/ii/huawei-mate-50-pro-1672133804.jpg?t=fitdesign&h=600&w=800",
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
