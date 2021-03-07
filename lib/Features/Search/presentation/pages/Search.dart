import 'package:Instagram/Features/Search/domain/models/label.dart';
import 'package:Instagram/core/widgets/custom_button.dart';
import 'package:Instagram/Features/Search/presentation/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../domain/models/images.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.02,
                    vertical: size.height * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SearchField(size: size),
                    IconButton(
                        icon: Icon(
                          Icons.qr_code_sharp,
                          size: size.width * 0.07,
                        ),
                        onPressed: () {})
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.02,
                ),
                child: Container(
                  width: size.width,
                  height: size.height * 0.053,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: labels.length,
                      itemBuilder: (ctx, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              right: size.width * 0.02,
                              top: size.height * 0.005),
                          child: CustomButton(
                            size: size,
                            text: labels[index].text,
                            isIcon: labels[index].isIcon,
                            icon: labels[index].icon,
                            border: true,
                          ),
                        );
                      }),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
                child: Container(
                  width: size.width,
                  height: size.height * 0.825,
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 4,
                    itemCount: images.length,
                    itemBuilder: (BuildContext context, int index) =>
                        new Container(
                      child: Image(
                        image: AssetImage(images[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    staggeredTileBuilder: (int index) =>
                        new StaggeredTile.count(2, index.isEven ? 2 : 1),
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
