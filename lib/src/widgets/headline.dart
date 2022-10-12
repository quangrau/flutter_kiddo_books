import 'package:audiobook/src/utils/app_styles.dart';
import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  final String text;
  final int size;
  final TextOverflow overFlow;

  const Headline({
    Key? key,
    required this.text,
    this.size = 1,
    this.overFlow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: _getTextStyleBySize(size),
    );
  }

  _getTextStyleBySize(int size) {
    switch(size) {
      case 3:
        return AppStyles.headLineStyleSmall;
        
      case 2:
        return AppStyles.headLineStyleMedium;
        
      case 1:
      default:
        return AppStyles.headLineStyleLarge;
    }
  }
}
