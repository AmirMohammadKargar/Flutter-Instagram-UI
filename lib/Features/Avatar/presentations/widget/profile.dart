import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key key,
    @required this.size,
    this.image,
    this.name,
    this.live,
    this.selfStory,
    this.hasStory,
    this.hasName,
    this.width,
  }) : super(key: key);

  final Size size;
  final String image, name;
  final bool live, selfStory, hasStory, hasName;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: width,
              height: width,
              decoration: BoxDecoration(
                gradient: hasStory
                    ? LinearGradient(
                        begin: live ? Alignment.topLeft : Alignment.topRight,
                        end:
                            live ? Alignment.bottomRight : Alignment.bottomLeft,
                        colors: live
                            ? [
                                Colors.purple,
                                Colors.purple,
                                Colors.pink,
                                Colors.red,
                              ]
                            : [
                                Colors.purple,
                                Colors.pink,
                                Colors.red,
                                Colors.orange,
                                Colors.orange
                              ],
                      )
                    : null,
                color: hasStory ? Colors.white : Colors.grey[300],
                shape: BoxShape.circle,
              ),
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: width * 0.47,
                  child: CircleAvatar(
                    radius: width * 0.45,
                    backgroundImage: AssetImage("$image"),
                  ),
                ),
              ),
            ),
            live
                ? Positioned(
                    top: size.height * 0.063,
                    left: size.width * 0.04,
                    child: Container(
                      width: size.width * 0.08,
                      height: size.height * 0.02,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(size.width * 0.01),
                        border: Border.all(color: Colors.white, width: 2.0),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.purple,
                            Colors.pink,
                            Colors.red,
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Live",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                : Text('')
          ],
        ),
        hasName
            ? Text(
                selfStory ? "Your story" : "$name",
                style: TextStyle(fontWeight: FontWeight.w400),
              )
            : Text('')
      ],
    );
  }
}
