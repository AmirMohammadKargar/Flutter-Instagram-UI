import 'package:Instagram/Features/Post/presentation/widgets/post_comment.dart';
import 'package:Instagram/Features/Post/presentation/widgets/post_description.dart';
import 'package:Instagram/Features/Post/presentation/widgets/post_header.dart';
import 'package:Instagram/core/widgets/text_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({Key key}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

double _currentIndex = 0.0;

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    List<String> _images = [
      "assets/images/44.jpg",
      "assets/images/19.jpg",
      "assets/images/20.jpg",
      "assets/images/22.jpg"
    ];

    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Column(
        children: <Widget>[
          PostHeader(
            size: size,
            username: "Ash",
            verify: true,
            image: "assets/images/36.jpg",
            location: "Tokyo, Japon",
          ),
          CarouselSlider(
            options: CarouselOptions(
                autoPlay: false,
                height: size.height * 0.38,
                viewportFraction: 1.0,
                aspectRatio: 4 / 6,
                enableInfiniteScroll: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index.toDouble();
                  });
                  print(_currentIndex);
                }),
            items: _images
                .map(
                  (item) => Container(
                    child: Image(
                      image: AssetImage(item),
                      width: size.width,
                      fit: BoxFit.fill,
                    ),
                  ),
                )
                .toList(),
          ),
          PostButtons(size: size, images: _images),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "2,320 likes",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.002,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Ash",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
          PostDescription(
            size: size,
            text:
                "Want to help contribute to 1x.engineer? Cool! Feel free to PR whatever you think is appropriate and fitting with the theme, as long as your contributions are in-line with the project's Code of Conduct. I'll try to be on top of PRs, and will add those who get involved with the project beyond single PRs as collaborators.",
          ),
          SizedBox(
            height: size.height * 0.007,
          ),
          PostComment(size: size),
          SizedBox(
            height: size.height * 0.005,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    "2 hours ago",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 12.0,
                    ),
                  ),
                  CustomTextButton(
                    text: ".Translate",
                    color: Colors.black,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PostButtons extends StatefulWidget {
  const PostButtons({
    Key key,
    @required this.size,
    @required List<String> images,
  })  : _images = images,
        super(key: key);

  final Size size;
  final List<String> _images;

  @override
  _PostButtonsState createState() => _PostButtonsState();
}

bool liked = false, saved = false;

class _PostButtonsState extends State<PostButtons> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
                icon: Icon(
                  liked ? Icons.favorite : Icons.favorite_border,
                  color: liked ? Colors.red : Colors.black,
                  size: widget.size.width * 0.07,
                ),
                onPressed: () {
                  setState(() {
                    liked = !liked;
                  });
                }),
            IconButton(
                icon: Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.black,
                  size: widget.size.width * 0.07,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.near_me_outlined,
                  color: Colors.black,
                  size: widget.size.width * 0.07,
                ),
                onPressed: null),
          ],
        ),
        SizedBox(
          width: widget.size.width * 0.11,
        ),
        widget._images.length > 1
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: widget._images.map(
                  (image) {
                    int index = widget._images.indexOf(image);
                    return Container(
                      width: size.width * 0.012,
                      height: size.width * 0.012,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == index
                              ? Colors.blue
                              : Colors.grey),
                    );
                  },
                ).toList(), // this was the part the I had to add
              )
            : Text(""),
        SizedBox(
          width: widget.size.width * 0.336,
        ),
        IconButton(
            icon: Icon(
              saved ? Icons.bookmark : Icons.bookmark_border,
              color: saved ? Colors.black : Colors.black,
              size: widget.size.width * 0.07,
            ),
            onPressed: () {
              setState(() {
                saved = !saved;
              });
            })
      ],
    );
  }
}
