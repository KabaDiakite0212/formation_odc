import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.title,
       this.fontSize = 20,
       this.fontWeight = FontWeight.normal,
       this.fontStyle = FontStyle.normal,
       this.color = CupertinoColors.systemRed,
       this.maxLines = 1
       });

  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final Color color;
  final int maxLines ;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
      ),
    );
  }
}

