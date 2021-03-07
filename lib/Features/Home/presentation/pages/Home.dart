import 'package:Instagram/Features/Avatar/presentations/widget/profile.dart';
import 'package:Instagram/Features/Home/domain/models/story.dart';
import 'package:Instagram/Features/Post/presentation/pages/post.dart';
import 'package:Instagram/core/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.07,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Center(
                      child: Image(
                        image: AssetImage('assets/images/Logo.png'),
                        width: size.width * 0.25,
                      ),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.near_me_outlined,
                          size: size.width * 0.07,
                          color: Colors.black,
                        ),
                        onPressed: null)
                  ],
                ),
              ),
            ),
            Container(
              width: size.width,
              height: size.height * 0.8289,
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (BuildContext ctx, int index) {
                    return index == 0
                        ? Column(
                            children: [
                              Container(
                                width: size.width,
                                height: size.height * 0.11,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: stories.length,
                                    itemBuilder: (BuildContext ctx, int index) {
                                      return Padding(
                                        padding: EdgeInsets.only(
                                            left: size.width * 0.02),
                                        child: Avatar(
                                          size: size,
                                          name: stories[index].name,
                                          image: stories[index].image,
                                          live: stories[index].live,
                                          selfStory: stories[index].selfStory,
                                          width: size.width * 0.16,
                                          hasStory: stories[index].hasStory,
                                          hasName: true,
                                        ),
                                      );
                                    }),
                              ),
                              CustomDivider(
                                size: size,
                                color: Colors.grey[300],
                                width: size.width,
                                height: size.height * 0.001,
                              ),
                            ],
                          )
                        : Post();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
