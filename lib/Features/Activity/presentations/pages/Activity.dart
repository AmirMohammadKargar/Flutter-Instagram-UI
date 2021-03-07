import 'package:Instagram/Features/Activity/presentations/widgets/activity_item.dart';
import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    int countWeek = 5, countMonth = 2, countEarlier = 5;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          "Activity",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "This Week",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Container(
                  height: (countWeek) * (size.width * 0.17),
                  child: ListView.builder(
                    itemCount: countWeek,
                    itemBuilder: (ctx, index) {
                      return ActivityItem(
                        size: size,
                        username: "Ash",
                        image: "assets/images/38.jpg",
                        text: "who you might know, is on instagram.",
                      );
                    },
                  ),
                ),
                Text(
                  "This Month",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Container(
                  height: (countMonth) * (size.width * 0.15),
                  child: ListView.builder(
                    itemCount: countMonth,
                    itemBuilder: (ctx, index) {
                      return ActivityItem(
                        size: size,
                        username: "Anne",
                        image: "assets/images/36.jpg",
                        text: "who you might know, is on instagram.",
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text(
                  "Earlier",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Container(
                  height: (countEarlier + 1) * (size.width * 0.15),
                  child: ListView.builder(
                    itemCount: countEarlier,
                    itemBuilder: (ctx, index) {
                      return ActivityItem(
                        size: size,
                        username: "Ash",
                        image: "assets/images/38.jpg",
                        text: "who you might know, is on instagram.",
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
