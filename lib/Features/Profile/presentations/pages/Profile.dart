import 'package:Instagram/Features/Profile/presentations/widgets/profile_bio.dart';
import 'package:Instagram/Features/Profile/presentations/widgets/profile_header.dart';
import 'package:Instagram/Features/Profile/presentations/widgets/row_buttons.dart';
import 'package:Instagram/Features/Profile/presentations/widgets/switch_button.dart';
import 'package:Instagram/Features/Search/domain/models/images.dart';
import 'package:Instagram/core/widgets/cutom_circle_button.dart';
import 'package:Instagram/core/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

bool _isActive_one = true, _isActive_two = false;

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Row(
          children: <Widget>[
            CustomTextButton(
              text: "Anne",
              fontSize: 22.0,
              color: Colors.black,
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            )
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add_box_outlined,
              size: size.width * 0.08,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.menu,
              size: size.width * 0.08,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: ProfileHeader(size: size),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.03,
                ),
                child: ProfileBio(
                    username: "Anne",
                    text: "Digital goodies designer\nEverythis is designed."),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.03,
                ),
                child: RowButtons(size: size),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Story Highlights",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        height: 1.5,
                      ),
                    ),
                    Text(
                      "Keep your favorite stories on your profile",
                      style: TextStyle(
                        fontSize: 15.0,
                        height: 1.2,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleButton(
                          size: size,
                          text: "New",
                          icon: Icons.add,
                        ),
                        Container(
                          width: size.width * 0.78,
                          height: size.width * 0.15,
                          child: ListView.builder(
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (ctx, index) {
                              return Padding(
                                padding:
                                    EdgeInsets.only(left: size.width * 0.07),
                                child: Container(
                                  alignment: Alignment.topCenter,
                                  width: size.width * 0.15,
                                  height: size.width * 0.15,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey[200],
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  SwtichButton(
                    size: size,
                    icon: Icons.grid_on,
                    isActive: _isActive_one,
                    onPress: () {
                      setState(() {
                        _isActive_one = true;
                        _isActive_two = false;
                      });
                    },
                  ),
                  SwtichButton(
                    size: size,
                    icon: Icons.person_pin_circle_outlined,
                    isActive: _isActive_two,
                    onPress: () {
                      setState(() {
                        _isActive_one = false;
                        _isActive_two = true;
                      });
                    },
                  )
                ],
              ),
              Container(
                width: size.width,
                height: size.height * 0.78,
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 3,
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) =>
                      new Container(
                    child: Image(
                      image: AssetImage(images[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  staggeredTileBuilder: (int index) =>
                      new StaggeredTile.count(1, 1),
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
