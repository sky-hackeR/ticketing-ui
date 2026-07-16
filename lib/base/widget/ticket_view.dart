import 'package:flutter/material.dart';
import 'package:reserver/base/widget/big_dot.dart';
import 'package:reserver/res/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*0.85,
      height: 178,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppStyles.ticketBlue,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text("NYC",
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white)
                ),

                Expanded(child: Container()),

                BigDot(),

                Expanded(child: Container()),

                BigDot(),

                Expanded(child: Container()),

                Text("NYC",
                    style: AppStyles.headLineStyle3.copyWith(color: Colors.white)
                )
              ],
            ),
            Row(
              children: [

              ],
            ),
          ],
        ),
      ),
    );
  }
}
