import 'package:flutter/material.dart';
import 'package:reserver/base/widget/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  const AppColumnTextLayout({super.key, required this.bottomText, required this.topText, required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(
            text: topText,
        ),
        SizedBox(
          height: 5,
        ),
        TextStyleThird(
          text: bottomText,
        ),
      ],
    );
  }
}
