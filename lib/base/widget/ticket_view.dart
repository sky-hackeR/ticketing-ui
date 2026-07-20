import 'package:flutter/material.dart';
import 'package:reserver/base/widget/app_layout_builder_widget.dart';
import 'package:reserver/base/widget/big_circle.dart';
import 'package:reserver/base/widget/big_dot.dart';
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
          children: [
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
                      Text(
                        "19:30",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
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

                      Text(
                        "21:30",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 3),
                  // Show movie
                  Row(
                    children: [
                      Text(
                        "Spider-Man",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),

                      Expanded(child: Container()),

                      Text(
                        "3H 45M",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),

                      Expanded(child: Container()),

                      Text(
                        "Supergirl",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

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
                    children: [
                      Text(
                        "19:30",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
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

                      Text(
                        "21:30",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 3),
                  // Show movie
                  Row(
                    children: [
                      Text(
                        "Spider-Man",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),

                      Expanded(child: Container()),

                      Text(
                        "3H 45M",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),

                      Expanded(child: Container()),

                      Text(
                        "Supergirl",
                        style: AppStyles.headLineStyle3.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
