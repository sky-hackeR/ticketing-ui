import 'package:flutter/material.dart';
import 'package:reserver/base/widget/app_column_text_layout.dart';
import 'package:reserver/base/widget/app_layout_builder_widget.dart';
import 'package:reserver/base/widget/big_circle.dart';
import 'package:reserver/base/widget/big_dot.dart';
import 'package:reserver/base/widget/text_style_fourth.dart';
import 'package:reserver/base/widget/text_style_third.dart';
import 'package:reserver/res/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 188,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            //Blue part of the card
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // Show movie duration
                  Row(
                    children: [
                      TextStyleThird(
                          text: "19:30"
                      ),

                      Expanded(child: Container()),

                      BigDot(),

                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(randomDivider: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(
                                  Icons.local_movies_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      BigDot(),

                      Expanded(child: Container()),

                      TextStyleThird(
                          text: "21:30"
                      ),
                    ],
                  ),

                  SizedBox(height: 3),
                  // Show movie
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                            text: "Spider-Man"
                        )
                      ),

                      Expanded(child: Container()),

                      TextStyleFourth(
                        text: "3H 45M",
                      ),

                      Expanded(child: Container()),

                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                            text: "Supergirl",
                            align: TextAlign.end
                        )
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // The middle part of the card
            Container(
              color: AppStyles.ticketGreen,
              child: Row(
                children: [
                  BigCircle(isRight: false),
                  Expanded(child: AppLayoutBuilderWidget(randomDivider: 16, width: 6,)),
                  BigCircle(isRight: true),
                ],
              ),
            ),

            // The green part of the card
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketGreen,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  // Show movie duration
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        alignment: CrossAxisAlignment.start,
                          bottomText: "L12",
                          topText: "Seat"
                      ),

                      AppColumnTextLayout(
                          alignment: CrossAxisAlignment.center,
                          bottomText: "19:22 PM",
                          topText: "Time"
                      ),

                      AppColumnTextLayout(
                          alignment: CrossAxisAlignment.end,
                          bottomText: "Regular",
                          topText: "Type"
                      ),
                    ],
                  ),

                  SizedBox(height: 3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
