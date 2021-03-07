import 'package:Instagram/Features/Login/presentation/widgets/no_account_button.dart';
import 'package:Instagram/core/widgets/big_blue_button.dart';
import 'package:Instagram/core/widgets/text_button.dart';
import 'package:flutter/material.dart';

class ReLoginScreen extends StatelessWidget {
  const ReLoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.05,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.23,
                ),
                Center(
                  child: Image(
                    image: AssetImage(
                      "assets/images/Logo.png",
                    ),
                    width: size.width * 0.4,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/38.jpg",
                  ),
                  radius: size.width * 0.09,
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text(
                  "Anne",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1,
                  ),
                  child: BigBlueButton(
                    size: size,
                    text: "Log in",
                    onPress: () {
                      Navigator.pushNamed(context, '/BottomNavigationBar');
                    },
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                CustomTextButton(
                  color: Colors.blue,
                  text: "Switch accounts",
                  onPress: () {
                    Navigator.pushNamed(context, '/Login');
                  },
                ),
                SizedBox(
                  height: size.height * 0.26,
                ),
                Divider(),
                NoAccountButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
