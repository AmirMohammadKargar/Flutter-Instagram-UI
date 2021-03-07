import 'package:Instagram/Features/Activity/presentations/pages/Activity.dart';
import 'package:Instagram/Features/Home/presentation/pages/Home.dart';
import 'package:Instagram/Features/Profile/presentations/pages/Profile.dart';
import 'package:Instagram/Features/Search/presentation/pages/Search.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

int _currentIndex = 0;
List<Widget> _screens = [
  HomeScreen(),
  SearchScreen(),
  HomeScreen(),
  ActivityScreen(),
  ProfileScreen(),
];

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey[350], width: 1)),
        ),
        height: size.height * 0.07,
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          currentIndex: _currentIndex,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.grey[200],
                icon: Icon(
                  _currentIndex == 0 ? Icons.home_rounded : Icons.home_outlined,
                  color: Colors.black,
                  size: size.width * 0.06,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: size.width * 0.06,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  _currentIndex == 2 ? Icons.add_box : Icons.add_box_outlined,
                  color: Colors.black,
                  size: size.width * 0.06,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  _currentIndex == 3 ? Icons.favorite : Icons.favorite_border,
                  color: Colors.black,
                  size: size.width * 0.06,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: ClipRRect(
                  borderRadius: BorderRadius.circular(size.width * 0.5),
                  child: Image(
                    image: AssetImage("assets/images/38.jpg"),
                    width: size.width * 0.06,
                  ),
                ),
                label: "")
          ],
        ),
      ),
    );
  }
}
