import 'package:flutter/material.dart';
import 'package:reserver/base/widget/app_double_text.dart';
import 'package:reserver/res/styles/app_styles.dart';
import 'package:reserver/res/media.dart';
import 'package:reserver/base/widget/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          SizedBox(height: 45),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Morning',
                          style: AppStyles.headLineStyle3
                        ),
                        SizedBox(height: 5,),
                        Text('Book Tickets',
                          style: AppStyles.headLineStyle1
                        )
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        image: const DecorationImage(
                            image: AssetImage((AppMedia.logo)),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search_outlined,
                        color: Colors.teal,
                      ),
                      Text('Search')
                    ],
                  ),
                ),
                SizedBox(height: 45,),
                AppDoubleText(
                  smallText: "View all",
                  bigText: "Upcoming Movies",
                ),
                SizedBox(height: 20,),
                TicketView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
